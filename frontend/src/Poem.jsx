import { useState, useEffect } from "react";
import { motion, AnimatePresence } from "framer-motion";

const API_URL = "https://poemsapp-backend.onrender.com"
const gradients = [
  "from-indigo-900 via-purple-900 to-black",
  "from-pink-500 via-red-500 to-yellow-500",
  "from-teal-500 via-indigo-500 to-purple-600",
  "from-orange-500 via-pink-600 to-rose-600",
  "from-blue-900 via-indigo-800 to-purple-900",
  "from-rose-500 via-fuchsia-600 to-indigo-700",
  "from-emerald-500 via-teal-600 to-cyan-700",
  "from-yellow-400 via-orange-500 to-red-600",
  "from-sky-600 via-indigo-600 to-purple-700",
];

function Poems() {
    const [poems, setPoems] = useState([]);
    const [currentPoem, setCurrentPoem] = useState(null);
    const [gradient, setGradient] = useState(gradients[0]);
    const [loading, setLoading] = useState(true);

    useEffect(() => {
        async function fetchPoems() {
            try {
                const response = await fetch(`${API_URL}/poem`);
                const data = await response.json();
                setPoems(data);
                if (data.length > 0) {
                    const random = Math.floor(Math.random() * data.length);
                    setCurrentPoem(data[random]);
                }
            } catch (error) {
                console.error("Error al cargar los poemas!!!!!");
            } finally {
                setLoading(false);
            }
        }

        fetchPoems();
    }, []);


    const changePoem = () => {
        if (poems.length === 0) return;

        const randomPoem = poems[Math.floor(Math.random() * poems.length)];
        setCurrentPoem(randomPoem);

        const randomGradient = gradients[Math.floor(Math.random() * gradients.length)];
        setGradient(randomGradient);
    };

    return (
        <motion.div
      className={`min-h-screen flex flex-col items-center justify-center text-white transition-all duration-1000 bg-gradient-to-b ${gradient} px-4`}
      animate={{ opacity: 1 }}
      initial={{ opacity: 0 }}
      transition={{ duration: 1.2 }}
    >
      <header className="text-4xl md:text-6xl font-bold text-center my-8 drop-shadow-lg flex flex-wrap items-center justify-center gap-3">
        <span role="img" aria-label="heart">💗</span>
        <span>Poemas para mi Nayeli</span>
        <span role="img" aria-label="heart">💗</span>
      </header>

      {loading ? (
        <motion.div
          initial={{ opacity: 0 }}
          animate={{ opacity: 1 }}
          transition={{ duration: 0.8 }}
          className="text-center text-xl md:text-2xl italic text-gray-200 mt-10"
        >
          Cargando poemas...
        </motion.div>
      ) : (
        <div className="relative w-full max-w-xl md:max-w-2xl px-4 sm:px-6">
          <AnimatePresence mode="wait">
            {currentPoem && (
              <motion.div
                key={currentPoem.id}
                initial={{ opacity: 0, y: 30 }}
                animate={{ opacity: 1, y: 0 }}
                exit={{ opacity: 0, y: -30 }}
                transition={{ duration: 0.8, ease: "easeInOut" }}
                className="p-6 sm:p-8 bg-black/40 backdrop-blur-xl rounded-2xl shadow-lg text-center"
              >
                <h2 className="text-2xl sm:text-3xl font-semibold text-pink-300 mb-4">
                  {currentPoem.title}
                </h2>
                <p className="text-base sm:text-lg italic leading-relaxed mb-4">
                  "{currentPoem.content}"
                </p>
                <p className="text-sm sm:text-md text-gray-300">
                  — {currentPoem.author || "Anónimo"}
                </p>
              </motion.div>
            )}
          </AnimatePresence>
        </div>
      )}

      {!loading && (
        <motion.button
          whileTap={{ scale: 0.95 }}
          onClick={changePoem}
          className="mt-10 px-6 py-3 rounded-xl bg-pink-600 hover:bg-pink-700 transition-all duration-300 shadow-lg text-sm sm:text-base"
        >
          Siguiente poema :3
        </motion.button>
      )}
    </motion.div>
    );
}

export default Poems;