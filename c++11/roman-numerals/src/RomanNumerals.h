/**
 * @brief Declaration of arabic to roman conversion functions.
 */

/* INCLUDES ******************************************************************/

#include <cstdint>
#include <string>

/* DECLARATIONS **************************************************************/

/**
 * @brief Converts an arabic number to roman string representation.
 *
 * @param number The arabic number.
 *
 * @return The roman number as a string.
 */
std::string toRoman(uint32_t number);
