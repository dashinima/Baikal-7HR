function Header = B7HR_GetMainHeader(fid)
%-- Get Main header from file(fid) ---------------------------------------
fseek(fid,0,'bof');
Hdr.ChNumb = fread(fid, 1,'uint16');
Hdr.Reserved1 = fread(fid, 1,'uint16');
Hdr.Version = fread(fid, 1,'uint16');
Hdr.Reserved2 = fread(fid, 6,'uint16');
Hdr.Digits = fread(fid, 1,'uint16');
Hdr.Reserved3 = fread(fid, 1,'uint16');
Hdr.Frequency = fread(fid, 1,'uint16');
Hdr.Reserved4 = fread(fid, 4,'uint16');
Hdr.StationName = fread(fid, 16,'16*uint8=>char');
Hdr.Reserved5 = fread(fid, 3,'double','ieee-le.l64');
Hdr.Latitude = fread(fid, 1,'double','ieee-le.l64');
Hdr.Longitude = fread(fid, 1,'double','ieee-le.l64');
Hdr.Reserved6 = fread(fid, 2,'uint64');
Hdr.Timebegin = fread(fid, 1,'uint64');
Hdr.Reserved7 = fread(fid, 4,'uint16');
Header = Hdr;
