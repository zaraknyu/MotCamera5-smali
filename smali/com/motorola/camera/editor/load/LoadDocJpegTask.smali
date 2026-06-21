.class public final Lcom/motorola/camera/editor/load/LoadDocJpegTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field public final mJpegUri:Landroid/net/Uri;

.field public final mListener:Lcom/motorola/camera/editor/DocEditorActivity;

.field public final mOrigUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Lcom/motorola/camera/editor/DocEditorActivity;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    iput-object p2, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    iput-object p3, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/DocEditorActivity;

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    check-cast p1, [Ljava/lang/Void;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    new-instance p1, Lcom/motorola/camera/editor/DocJpegHolder;

    iget-object v0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mJpegUri:Landroid/net/Uri;

    invoke-direct {p1, v0}, Lcom/motorola/camera/editor/DocJpegHolder;-><init>(Landroid/net/Uri;)V

    if-eqz v0, :cond_a

    sget-object v1, Lcom/motorola/camera/background/provider/filedatacontract/FileUtils;->TAG:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object v1

    iput-object v1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    if-nez v1, :cond_0

    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mOrigUri:Landroid/net/Uri;

    invoke-static {v1, p0}, Lkotlin/reflect/jvm/internal/KPropertyImplKt;->extractBufferFromContentUri(Landroid/content/ContentResolver;Landroid/net/Uri;)[B

    move-result-object p0

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    :cond_0
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    const/4 v1, 0x0

    const-string v2, "LoadDocJpegTask"

    if-nez p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "load jpeg error:"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    new-instance p0, Lcom/motorola/camera/editor/parser/DocDataParser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/motorola/camera/editor/parser/XMPParser;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/motorola/camera/editor/parser/XMPParser;-><init>(I)V

    iget-object v4, v0, Lcom/motorola/camera/editor/parser/XMPParser;->attributeParsers:Ljava/util/ArrayList;

    invoke-virtual {v4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    const/4 v5, 0x2

    :try_start_0
    new-instance v6, Ljava/io/ByteArrayInputStream;

    invoke-direct {v6, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Lcom/motorola/camera/editor/parser/XMPStream;

    invoke-direct {v1, v6}, Lcom/motorola/camera/editor/parser/XMPStream;-><init>(Ljava/io/ByteArrayInputStream;)V

    invoke-virtual {v0, v1}, Lcom/motorola/camera/editor/parser/XMPParser;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V

    iget-object v4, v1, Lcom/motorola/camera/editor/parser/XMPStream;->extended:Ljava/lang/String;

    if-eqz v4, :cond_2

    iput v5, v1, Lcom/motorola/camera/editor/parser/XMPStream;->status:I

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v0, v1}, Lcom/motorola/camera/editor/parser/XMPParser;->parse(Lcom/motorola/camera/editor/parser/XMPStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v1, v6

    goto :goto_1

    :catch_0
    move-object v1, v6

    goto :goto_2

    :cond_3
    :goto_0
    invoke-static {v6}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_3

    :catchall_1
    move-exception p0

    :goto_1
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    throw p0

    :catch_1
    :goto_2
    invoke-static {v1}, Lcom/motorola/camera/Util;->closeSilently(Ljava/io/Closeable;)V

    :goto_3
    iget-object p0, p0, Lcom/motorola/camera/editor/parser/DocDataParser;->mImageData:[B

    if-eqz p0, :cond_4

    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    goto :goto_4

    :cond_4
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    array-length v0, p0

    new-array v0, v0, [B

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    :goto_4
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegBuffer:[B

    array-length v0, p0

    invoke-static {p0, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    invoke-static {p0}, Lcom/motorola/camera/Util;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :try_start_2
    iget-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mCropBuffer:[B

    new-instance v0, Lcom/motorola/camera/photometadata/PhotoMetadata;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lcom/motorola/camera/photometadata/PhotoMetadata;-><init>(Ljava/io/InputStream;)V

    const-string p0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getAttributeInt(ILjava/lang/String;)I

    move-result p0

    const/4 v4, 0x6

    const/16 v6, 0x8

    const/4 v7, 0x3

    if-eq p0, v7, :cond_7

    if-eq p0, v4, :cond_6

    if-eq p0, v6, :cond_5

    const/4 p0, 0x0

    goto :goto_5

    :cond_5
    const/high16 p0, 0x43870000    # 270.0f

    goto :goto_5

    :cond_6
    const/high16 p0, 0x42b40000    # 90.0f

    goto :goto_5

    :cond_7
    const/high16 p0, 0x43340000    # 180.0f

    :goto_5
    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    new-array p0, v6, [F

    sget-object v8, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_POINTS:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    invoke-virtual {v0, v8}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_8

    const-string v4, ";"

    invoke-virtual {v8, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-lt v5, v6, :cond_9

    :goto_6
    if-ge v3, v6, :cond_9

    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    aput v5, p0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :catch_2
    move-exception p0

    goto :goto_8

    :cond_8
    iget v6, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegWidth:I

    div-int/lit8 v8, v6, 0x3

    iget v9, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mJpegHeight:I

    div-int/lit8 v10, v9, 0x3

    int-to-float v11, v8

    aput v11, p0, v3

    int-to-float v3, v10

    aput v3, p0, v1

    sub-int/2addr v6, v8

    int-to-float v6, v6

    aput v6, p0, v5

    aput v3, p0, v7

    const/4 v3, 0x4

    aput v6, p0, v3

    sub-int/2addr v9, v10

    int-to-float v3, v9

    const/4 v5, 0x5

    aput v3, p0, v5

    aput v11, p0, v4

    const/4 v4, 0x7

    aput v3, p0, v4

    :cond_9
    iput-object p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    sget-object p0, Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;->TAG_DOC_FILTER:Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;

    sget-object v3, Lcom/motorola/camera/editor/ui/FilterButtonView$Mode;->mLookUp:Ljava/util/HashMap;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :try_start_3
    invoke-virtual {v0, p0}, Lcom/motorola/camera/photometadata/PhotoMetadata;->getMnStringValue(Lcom/motorola/camera/photometadata/MotMakerNotesParser$Tags;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_7

    :catch_3
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_9

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    return-object p1
.end method

.method public final bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    return-void
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/motorola/camera/editor/DocJpegHolder;

    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/motorola/camera/editor/load/LoadDocJpegTask;->mListener:Lcom/motorola/camera/editor/DocEditorActivity;

    if-eqz p0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mLoadBitmapTaskStarted:Z

    iput-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegHolder:Lcom/motorola/camera/editor/DocJpegHolder;

    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOrientation:F

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitRotate:F

    iget v0, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mFilterMode:I

    iput v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    iget-object p1, p1, Lcom/motorola/camera/editor/DocJpegHolder;->mOriginalPoints:[F

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateAdjustBitmap([F)V

    iget-object p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mFilterButtons:Lcom/motorola/camera/editor/ui/FilterButtonView;

    iget v0, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    invoke-virtual {p1, v0}, Lcom/motorola/camera/editor/ui/FilterButtonView;->setCenter(I)V

    iget p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mInitFilter:I

    sget-object v0, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v0}, Lcom/motorola/camera/CameraApp;->getAnalytics()Lcom/motorola/camera/analytics/AnalyticsHelper;

    move-result-object v0

    const-string v1, "ANALYTICS_DOC_EDITOR_FILTER"

    invoke-virtual {v0, p1, v1}, Lcom/motorola/camera/analytics/AnalyticsHelper;->handleDocEditorEdit(ILjava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/motorola/camera/editor/DocEditorActivity;->updateViewForState(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/motorola/camera/editor/DocEditorActivity;->mJpegLoadFinish:Z

    :cond_2
    :goto_0
    return-void
.end method
