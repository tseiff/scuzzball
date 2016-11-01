#include <linux/module.h>   /* Needed by all modules */
#include <linux/kernel.h>   /* Needed for KERN_INFO */

MODULE_LICENSE("GPL");
MODULE_AUTHOR("Tadd Seiff <taddseiff@gmail.com>");
MODULE_DESCRIPTION("virtio SCSI device for local host.");
MODULE_VERSION(MODULEVERSION);

int init_module(void)
{
        


        printk(KERN_INFO "scuzzball successfully loaded!\n");
        return 0;
}


void cleanup_module(void)
{
        printk(KERN_INFO "so long, scuzzball!\n");
}
