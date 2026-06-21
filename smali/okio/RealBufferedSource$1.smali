.class public final Lokio/RealBufferedSource$1;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 2
    iput-object p1, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokio/RealBufferedSource;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    .line 3
    iput-object p1, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lokio/RealBufferedSource;

    iget-boolean v0, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-wide v0, p0, Lokio/Buffer;->size:J

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public close()V
    .locals 1

    iget v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/io/InputStream;->close()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lokio/RealBufferedSource;

    invoke-virtual {p0}, Lokio/RealBufferedSource;->close()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 5

    iget v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0

    .line 3
    :pswitch_0
    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lokio/RealBufferedSource;

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_2

    .line 4
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 5
    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {v0}, Lokio/Buffer;->readByte()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_1
    return p0

    .line 7
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 8

    iget v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    .line 8
    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move p0, p3

    :goto_0
    return p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lokio/RealBufferedSource;

    iget-object v0, p0, Lokio/RealBufferedSource;->buffer:Lokio/Buffer;

    iget-boolean v1, p0, Lokio/RealBufferedSource;->closed:Z

    if-nez v1, :cond_2

    .line 12
    array-length v1, p1

    int-to-long v2, v1

    int-to-long v4, p2

    int-to-long v6, p3

    invoke-static/range {v2 .. v7}, Lokio/Util;->checkOffsetAndCount(JJJ)V

    .line 13
    iget-wide v1, v0, Lokio/Buffer;->size:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    .line 14
    iget-object p0, p0, Lokio/RealBufferedSource;->source:Lokio/Source;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_1

    const/4 p0, -0x1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Lokio/Buffer;->read([BII)I

    move-result p0

    :goto_1
    return p0

    .line 16
    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lokio/RealBufferedSource$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lokio/RealBufferedSource$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lokio/RealBufferedSource;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
