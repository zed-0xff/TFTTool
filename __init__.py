# TFTTool - Sovol TFT screen tools
# Export key constants and functions for easy importing

import sys
import os

# Import screen_probe and export its key items
try:
    import screen_probe as sp
except ImportError:
    pass

# Export key constants for convenient access
if 'sp' in locals():
    # Export TWFILE_EXIT
    TWFILE_EXIT = sp.TWFILE_EXIT
    
    # Export twfile_packets function
    def twfile_packets(data, chunk=4096 - 12 - 2):
        """Frames of the twfile transparent file transfer."""
        return sp.twfile_packets(data, chunk)
    
    # Export modbus_crc
    def modbus_crc(data: bytes) -> int:
        """CRC-16/MODBUS."""
        return sp.modbus_crc(data)
    
    # Export Screen class
    class Screen:
        """Screen serial connection class."""
        pass
