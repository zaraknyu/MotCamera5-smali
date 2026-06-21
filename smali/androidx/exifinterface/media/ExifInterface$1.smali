.class public final Landroidx/exifinterface/media/ExifInterface$1;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public mPosition:J

.field public final synthetic val$in:Ljava/io/InputStream;


# direct methods
.method public synthetic constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Ljava/io/InputStream;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method

.method private final close$androidx$exifinterface$media$ExifInterface$1()V
    .locals 0

    return-void
.end method

.method private final close$com$motorola$camera$photometadata$PhotoMetadata$1()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    iget p0, p0, Landroidx/exifinterface/media/ExifInterface$1;->$r8$classId:I

    return-void
.end method

.method public final getSize()J
    .locals 2

    iget p0, p0, Landroidx/exifinterface/media/ExifInterface$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-wide/16 v0, -0x1

    return-wide v0

    :pswitch_0
    const-wide/16 v0, -0x1

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final readAt(J[BII)I
    .locals 7

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Ljava/io/InputStream;

    check-cast v0, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;

    if-nez p5, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    const/4 v2, -0x1

    if-gez v1, :cond_1

    :goto_0
    move p0, v2

    goto :goto_1

    :cond_1
    :try_start_0
    iget-wide v3, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    cmp-long v1, v3, p1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p1, p2}, Lcom/motorola/camera/photometadata/ByteOrderedDataInputStream;->seek(J)V

    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    :cond_2
    invoke-virtual {v0, p3, p4, p5}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_3

    iget-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    int-to-long p4, p1

    add-long/2addr p2, p4

    iput-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move p0, p1

    goto :goto_1

    :catch_0
    :cond_3
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    goto :goto_0

    :goto_1
    return p0

    :pswitch_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface$1;->val$in:Ljava/io/InputStream;

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;

    if-nez p5, :cond_4

    const/4 p0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    const/4 v4, -0x1

    if-gez v3, :cond_5

    :goto_2
    move p0, v4

    goto :goto_3

    :cond_5
    :try_start_1
    iget-wide v5, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_7

    cmp-long v1, v5, v1

    if-ltz v1, :cond_6

    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    int-to-long v1, v1

    add-long/2addr v5, v1

    cmp-long v1, p1, v5

    if-ltz v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$SeekableByteOrderedDataInputStream;->seek(J)V

    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    :cond_7
    iget-object p1, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p1

    if-le p5, p1, :cond_8

    iget-object p1, v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->mDataInputStream:Ljava/io/DataInputStream;

    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result p5

    :cond_8
    invoke-virtual {v0, p3, p4, p5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_9

    iget-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    int-to-long p4, p1

    add-long/2addr p2, p4

    iput-wide p2, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move p0, p1

    goto :goto_3

    :catch_1
    :cond_9
    const-wide/16 p1, -0x1

    iput-wide p1, p0, Landroidx/exifinterface/media/ExifInterface$1;->mPosition:J

    goto :goto_2

    :goto_3
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
