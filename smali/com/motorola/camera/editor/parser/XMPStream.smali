.class public final Lcom/motorola/camera/editor/parser/XMPStream;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public chunk:I

.field public extended:Ljava/lang/String;

.field public status:I

.field public final stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    new-instance v0, Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    invoke-direct {v0, p1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    iput-object v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    return-void
.end method


# virtual methods
.method public final read()I
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 2
    invoke-virtual {p0, v1, v2, v0}, Lcom/motorola/camera/editor/parser/XMPStream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p0

    .line 3
    :cond_0
    aget-byte p0, v1, v2

    return p0
.end method

.method public final read([BII)I
    .locals 7

    .line 4
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    iget-object v1, p0, Lcom/motorola/camera/editor/parser/XMPStream;->stream:Lcom/motorola/camera/editor/parser/CountedDataInputStream;

    if-lez v0, :cond_0

    .line 5
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 6
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    .line 7
    invoke-virtual {v1, p1, p2, p3}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result p0

    return p0

    .line 8
    :cond_0
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-nez v0, :cond_2

    .line 9
    invoke-virtual {v1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v5, -0x28

    if-eq v0, v5, :cond_1

    goto/16 :goto_3

    .line 10
    :cond_1
    iput v3, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    goto :goto_0

    :cond_2
    if-eq v0, v3, :cond_d

    if-ne v0, v2, :cond_3

    goto/16 :goto_3

    .line 11
    :cond_3
    :goto_0
    invoke-virtual {v1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const/16 v5, -0x27

    if-eq v0, v5, :cond_c

    const/16 v5, -0x40

    if-lt v0, v5, :cond_4

    const/16 v5, -0x31

    if-gt v0, v5, :cond_4

    const/16 v5, -0x3c

    if-eq v0, v5, :cond_4

    const/16 v5, -0x38

    if-eq v0, v5, :cond_4

    const/16 v5, -0x34

    if-eq v0, v5, :cond_4

    goto/16 :goto_2

    :cond_4
    const/16 v5, -0x1f

    if-ne v0, v5, :cond_3

    .line 12
    invoke-virtual {v1}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readShort()S

    move-result v0

    const v5, 0xffff

    and-int/2addr v0, v5

    .line 13
    iget v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    if-ne v5, v3, :cond_7

    const/16 v5, 0x1d

    if-ge v0, v5, :cond_5

    add-int/lit8 v0, v0, -0x2

    int-to-long v5, v0

    .line 14
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_0

    .line 15
    :cond_5
    invoke-virtual {v1, v5}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 16
    const-string v6, "http://ns.adobe.com/xap/1.0/\u0000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v0, v0, -0x1f

    .line 17
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1f

    int-to-long v5, v0

    .line 18
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_0

    :cond_7
    const/16 v5, 0x23

    if-ge v0, v5, :cond_8

    add-int/lit8 v0, v0, -0x2

    int-to-long v5, v0

    .line 19
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto :goto_0

    .line 20
    :cond_8
    invoke-virtual {v1, v5}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 21
    const-string v6, "http://ns.adobe.com/xmp/extension/\u0000"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 22
    iget-object v5, p0, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-nez v5, :cond_9

    goto :goto_3

    :cond_9
    const/16 v5, 0x20

    .line 23
    invoke-virtual {v1, v5}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->readString(I)Ljava/lang/String;

    move-result-object v5

    .line 24
    iget-object v6, p0, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_0

    :cond_a
    const-wide/16 v2, 0x8

    .line 25
    invoke-virtual {v1, v2, v3}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    add-int/lit8 v0, v0, -0x4d

    .line 26
    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    .line 27
    :goto_1
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    if-lez v0, :cond_d

    .line 28
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 29
    iget v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    sub-int/2addr v0, p3

    iput v0, p0, Lcom/motorola/camera/editor/parser/XMPStream;->chunk:I

    .line 30
    invoke-virtual {v1, p1, p2, p3}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->read([BII)I

    move-result p0

    return p0

    :cond_b
    add-int/lit8 v0, v0, -0x25

    int-to-long v5, v0

    .line 31
    invoke-virtual {v1, v5, v6}, Lcom/motorola/camera/editor/parser/CountedDataInputStream;->skipOrThrow(J)V

    goto/16 :goto_0

    .line 32
    :cond_c
    :goto_2
    iput v2, p0, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :cond_d
    :goto_3
    return v4
.end method
