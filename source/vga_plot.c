volatile unsigned *vga_controller = (volatile unsigned *) 0x00004000;

void vga_plot(unsigned x, unsigned y, unsigned colour)
{
    *vga_controller = (y << 24) | (x << 16) | colour;
}
