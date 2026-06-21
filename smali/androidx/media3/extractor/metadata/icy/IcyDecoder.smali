.class public final Landroidx/media3/extractor/metadata/icy/IcyDecoder;
.super Landroidx/media3/extractor/metadata/SimpleMetadataDecoder;
.source "SourceFile"


# static fields
.field public static final METADATA_ELEMENT:Ljava/util/regex/Pattern;


# instance fields
.field public final iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

.field public final utf8Decoder:Ljava/nio/charset/CharsetDecoder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "(.+?)=\'(.*?)\';"

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/extractor/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/extractor/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    return-void
.end method


# virtual methods
.method public final decode(Landroidx/media3/extractor/metadata/MetadataInputBuffer;Ljava/nio/ByteBuffer;)Landroidx/media3/common/Metadata;
    .locals 4

    iget-object p1, p0, Landroidx/media3/extractor/metadata/icy/IcyDecoder;->iso88591Decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object p0, p0, Landroidx/media3/extractor/metadata/icy/IcyDecoder;->utf8Decoder:Ljava/nio/charset/CharsetDecoder;

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p1

    :catch_0
    invoke-virtual {p0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    :try_start_1
    invoke-virtual {p1, p2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object p1, p0

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    throw p0

    :catch_1
    invoke-virtual {p1}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object p1, v0

    :goto_0
    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result p0

    new-array p0, p0, [B

    invoke-virtual {p2, p0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    if-nez p1, :cond_0

    new-instance p1, Landroidx/media3/common/Metadata;

    new-instance p2, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {p2, p0, v0, v0}, Landroidx/media3/extractor/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    filled-new-array {p2}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object p1

    :cond_0
    sget-object p2, Landroidx/media3/extractor/metadata/icy/IcyDecoder;->METADATA_ELEMENT:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const/4 p2, 0x0

    move-object v1, v0

    :goto_1
    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "streamurl"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string/jumbo v3, "streamtitle"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_2

    :cond_1
    move-object v0, v2

    goto :goto_2

    :cond_2
    move-object v1, v2

    :cond_3
    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    goto :goto_1

    :cond_4
    new-instance p1, Landroidx/media3/common/Metadata;

    new-instance p2, Landroidx/media3/extractor/metadata/icy/IcyInfo;

    invoke-direct {p2, p0, v0, v1}, Landroidx/media3/extractor/metadata/icy/IcyInfo;-><init>([BLjava/lang/String;Ljava/lang/String;)V

    filled-new-array {p2}, [Landroidx/media3/common/Metadata$Entry;

    move-result-object p0

    invoke-direct {p1, p0}, Landroidx/media3/common/Metadata;-><init>([Landroidx/media3/common/Metadata$Entry;)V

    return-object p1
.end method
