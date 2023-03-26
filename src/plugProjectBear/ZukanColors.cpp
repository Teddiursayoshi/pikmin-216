typedef unsigned char u8;

struct Color4 {
    u8 r;
    u8 g;
    u8 b;
    u8 a;
};

namespace Morimura
{

namespace TItemZukan {
    void setColors();
}

namespace TZukanBase
{
    static Color4 mCategoryColor0w;
    static Color4 mCategoryColor1w;
    static Color4 mCategoryColor0b;
    static Color4 mCategoryColor1b;
};

void TItemZukan::setColors() {

    // b = ungrouped, w = grouped
    // index 0 = dark, index 1 = light

    // color go Red Green Blue Alpha, if that wasn't clear

    // unsure if these are the right colors
    TZukanBase::mCategoryColor0w = {0x5f, 0xff, 0x00, 0xff};
    TZukanBase::mCategoryColor1w = {0x00, 0x00, 0xff, 0x00};

    TZukanBase::mCategoryColor0b = {0x6e, 0x6e, 0xff, 0x00};
    TZukanBase::mCategoryColor1b = {0x00, 0x80, 0xff, 0x00};

}

} // namespace Morimura

