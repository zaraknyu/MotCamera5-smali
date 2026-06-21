.class public final Lcom/motorola/camera/editor/parser/CountedDataInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final mByteArray:[B

.field public final mByteBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteArray:[B

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 0

    .line 3
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p0

    return p0
.end method

.method public final read([B)I
    .locals 0

    .line 1
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    return p0
.end method

.method public final read([BII)I
    .locals 0

    .line 2
    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final readShort()S
    .locals 4

    iget-object v0, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteArray:[B

    const/4 v1, 0x0

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    const/4 v3, 0x2

    invoke-virtual {v2, v0, v1, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final readString(I)Ljava/lang/String;
    .locals 2

    new-array v0, p1, [B

    const/4 v1, 0x0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, v0, v1, p1}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    if-ne p0, p1, :cond_0

    new-instance p0, Ljava/lang/String;

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method

.method public final skip(J)J
    .locals 0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final skipOrThrow(J)V
    .locals 2

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0
.end method
