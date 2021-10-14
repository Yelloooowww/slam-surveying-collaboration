/** THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
 * BY HAND!!
 *
 * Generated by lcm-gen
 **/

#ifndef __bot_procman_deputy_cmd_t_hpp__
#define __bot_procman_deputy_cmd_t_hpp__

#include <lcm/lcm_coretypes.h>

#include <string>

namespace bot_procman
{

/**
 *  describes the state of a command managed by the procman sheriff/deputy
 *
 */
class deputy_cmd_t
{
    public:
        /// The command to execute.
        std::string name;

        /// nickname of the command.  This is also used as the display name.
        std::string nickname;

        /// command group.  Used only for UI purposes
        std::string group;

        /**
         * If the command is running, then this is the pid if not, then this is
         * zero.
         */
        int32_t    pid;

        /// an ID for the run instance
        int32_t    actual_runid;

        /// the last exit code
        int32_t    exit_code;

        /// [0, 1]
        float      cpu_usage;

        /// total virtual memory used by the process
        int64_t    mem_vsize_bytes;

        /// total physical memory used by the process
        int64_t    mem_rss_bytes;

        /// assigned by the sheriff, identifies the command
        int32_t    sheriff_id;

        /// automatically restart when the process should be running
        int8_t     auto_respawn;

    public:
        /**
         * Encode a message into binary form.
         *
         * @param buf The output buffer.
         * @param offset Encoding starts at thie byte offset into @p buf.
         * @param maxlen Maximum number of bytes to write.  This should generally be
         *  equal to getEncodedSize().
         * @return The number of bytes encoded, or <0 on error.
         */
        inline int encode(void *buf, int offset, int maxlen) const;

        /**
         * Check how many bytes are required to encode this message.
         */
        inline int getEncodedSize() const;

        /**
         * Decode a message from binary form into this instance.
         *
         * @param buf The buffer containing the encoded message.
         * @param offset The byte offset into @p buf where the encoded message starts.
         * @param maxlen The maximum number of bytes to read while decoding.
         * @return The number of bytes decoded, or <0 if an error occured.
         */
        inline int decode(const void *buf, int offset, int maxlen);

        /**
         * Retrieve the 64-bit fingerprint identifying the structure of the message.
         * Note that the fingerprint is the same for all instances of the same
         * message type, and is a fingerprint on the message type definition, not on
         * the message contents.
         */
        inline static int64_t getHash();

        /**
         * Returns "deputy_cmd_t"
         */
        inline static const char* getTypeName();

        // LCM support functions. Users should not call these
        inline int _encodeNoHash(void *buf, int offset, int maxlen) const;
        inline int _getEncodedSizeNoHash() const;
        inline int _decodeNoHash(const void *buf, int offset, int maxlen);
        inline static uint64_t _computeHash(const __lcm_hash_ptr *p);
};

int deputy_cmd_t::encode(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;
    int64_t hash = getHash();

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &hash, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = this->_encodeNoHash(buf, offset + pos, maxlen - pos);
    if (tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int deputy_cmd_t::decode(const void *buf, int offset, int maxlen)
{
    int pos = 0, thislen;

    int64_t msg_hash;
    thislen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &msg_hash, 1);
    if (thislen < 0) return thislen; else pos += thislen;
    if (msg_hash != getHash()) return -1;

    thislen = this->_decodeNoHash(buf, offset + pos, maxlen - pos);
    if (thislen < 0) return thislen; else pos += thislen;

    return pos;
}

int deputy_cmd_t::getEncodedSize() const
{
    return 8 + _getEncodedSizeNoHash();
}

int64_t deputy_cmd_t::getHash()
{
    static int64_t hash = static_cast<int64_t>(_computeHash(NULL));
    return hash;
}

const char* deputy_cmd_t::getTypeName()
{
    return "deputy_cmd_t";
}

int deputy_cmd_t::_encodeNoHash(void *buf, int offset, int maxlen) const
{
    int pos = 0, tlen;

    char* name_cstr = const_cast<char*>(this->name.c_str());
    tlen = __string_encode_array(
        buf, offset + pos, maxlen - pos, &name_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    char* nickname_cstr = const_cast<char*>(this->nickname.c_str());
    tlen = __string_encode_array(
        buf, offset + pos, maxlen - pos, &nickname_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    char* group_cstr = const_cast<char*>(this->group.c_str());
    tlen = __string_encode_array(
        buf, offset + pos, maxlen - pos, &group_cstr, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->pid, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->actual_runid, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->exit_code, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __float_encode_array(buf, offset + pos, maxlen - pos, &this->cpu_usage, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &this->mem_vsize_bytes, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int64_t_encode_array(buf, offset + pos, maxlen - pos, &this->mem_rss_bytes, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_encode_array(buf, offset + pos, maxlen - pos, &this->sheriff_id, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __boolean_encode_array(buf, offset + pos, maxlen - pos, &this->auto_respawn, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int deputy_cmd_t::_decodeNoHash(const void *buf, int offset, int maxlen)
{
    int pos = 0, tlen;

    int32_t __name_len__;
    tlen = __int32_t_decode_array(
        buf, offset + pos, maxlen - pos, &__name_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__name_len__ > maxlen - pos) return -1;
    this->name.assign(
        static_cast<const char*>(buf) + offset + pos, __name_len__ - 1);
    pos += __name_len__;

    int32_t __nickname_len__;
    tlen = __int32_t_decode_array(
        buf, offset + pos, maxlen - pos, &__nickname_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__nickname_len__ > maxlen - pos) return -1;
    this->nickname.assign(
        static_cast<const char*>(buf) + offset + pos, __nickname_len__ - 1);
    pos += __nickname_len__;

    int32_t __group_len__;
    tlen = __int32_t_decode_array(
        buf, offset + pos, maxlen - pos, &__group_len__, 1);
    if(tlen < 0) return tlen; else pos += tlen;
    if(__group_len__ > maxlen - pos) return -1;
    this->group.assign(
        static_cast<const char*>(buf) + offset + pos, __group_len__ - 1);
    pos += __group_len__;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->pid, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->actual_runid, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->exit_code, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __float_decode_array(buf, offset + pos, maxlen - pos, &this->cpu_usage, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &this->mem_vsize_bytes, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int64_t_decode_array(buf, offset + pos, maxlen - pos, &this->mem_rss_bytes, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __int32_t_decode_array(buf, offset + pos, maxlen - pos, &this->sheriff_id, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    tlen = __boolean_decode_array(buf, offset + pos, maxlen - pos, &this->auto_respawn, 1);
    if(tlen < 0) return tlen; else pos += tlen;

    return pos;
}

int deputy_cmd_t::_getEncodedSizeNoHash() const
{
    int enc_size = 0;
    enc_size += this->name.size() + 4 + 1;
    enc_size += this->nickname.size() + 4 + 1;
    enc_size += this->group.size() + 4 + 1;
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    enc_size += __float_encoded_array_size(NULL, 1);
    enc_size += __int64_t_encoded_array_size(NULL, 1);
    enc_size += __int64_t_encoded_array_size(NULL, 1);
    enc_size += __int32_t_encoded_array_size(NULL, 1);
    enc_size += __boolean_encoded_array_size(NULL, 1);
    return enc_size;
}

uint64_t deputy_cmd_t::_computeHash(const __lcm_hash_ptr *)
{
    uint64_t hash = 0xed5fbe5982ac8353LL;
    return (hash<<1) + ((hash>>63)&1);
}

}

#endif
