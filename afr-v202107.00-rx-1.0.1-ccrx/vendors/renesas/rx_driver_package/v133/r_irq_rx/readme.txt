PLEASE REFER TO THE APPLICATION NOTE FOR THIS MIDDLEWARE FOR MORE INFORMATION

r_irq_rx
=========

Overview
--------
This software provides a unified, abstracted interface for use in handling interrupt events from external pin interrupts.
These events are mapped to the IRQ vectors. The operations needed to prepare the IRQs for handling interupts are
performed in the R_IRQ_Open() API function. There are up to 8 or 16 IRQ vectors that can be used, so a means to
identify a particular IRQ vector in each API function is provided. The software makes use of a data structure assigned
to each IRQ that stores information specific to that vector required to perform the various IRQ API functions. One such
data structure is allocated for each IRQ in use. Each of these data structures is referred to as an IRQ handle, and each
has a handle pointer.
When an IRQ is initialized through the R_IRQ_Open() function, its handle pointer is returned to the caller. Thereafter,
the application must provide the handle pointer for the selected IRQ when calling any of the remaining IRQ API
functions. When called, the API functions extract the IRQ number from the handle, as well as other information linked
to that IRQ and contained in the handle structure.
When an IRQ event is triggered, an interrupt handler is invoked that passes control to a user defined "Callback"
function. Since Callbacks are executed in the interrupt state, further interrupts are disabled until the callback completes
and the program returns from the ISR. Interrupt processing may be enabled or disabled by the user application at any
time after the IRQ vector has been initialized.

Features
--------
* Set various optional trigger modes: An interrupt request may be generated by falling edge, rising edge, or from a fixed low level.
* Optional digital input filtering and filter clocks.
* Interrupt priority can be assigned.
* Each IRQ pin can have its own settings. 
* Interrupt enable/disable function for each IRQ.

File Structure
--------------
r_irq_rx\
|   readme.txt
|   r_irq_rx_if.h
|
+---doc\
|   |
|   +---en\
|   |   r01an1668ej{VERSION_NUMBER}-rx-int.pdf
|   |
|   |
|   +---ja\
|       r01an1668jj{VERSION_NUMBER}-rx-int.pdf
|
+---src\
        r_irq_rx_private.h
        r_irq_rx.c

r_config
    r_irq_rx_config.h
