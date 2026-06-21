.class public abstract Lcom/motorola/camera/meishe/MeisheEffects;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final mEffects:Ljava/util/LinkedList;

.field public static mIsInitialized:Z

.field public static mKeepLiveFilter:Ljava/lang/String;

.field public static mLutFiles:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "MeisheEffects"

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;

    :try_start_0
    const-string v1, "meishe-nv-effects-thumbnails"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "error loading meishe-nv-effects-thumbnails.so"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    :try_start_1
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "msluts"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Failed to get Meishe asset file list."

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public static declared-synchronized clearEffects()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/meishe/MeisheEffects;->mIsInitialized:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_clear_meishe_effect_thumbnails()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized configureThumbnails(ILjava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1

    move/from16 v0, p7

    int-to-float v0, v0

    int-to-float p0, p0

    const/high16 v2, 0x43200000    # 160.0f

    div-float/2addr p0, v2

    mul-float/2addr p0, v0

    :try_start_0
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    rem-int/lit8 v0, p0, 0x2

    add-int v6, v0, p0

    invoke-static/range {p5 .. p5}, Lcom/motorola/camera/meishe/MeisheEffects;->sortEffects([Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "MeisheEffects"

    const-string/jumbo v0, "unable to sort meishe effects list"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    :cond_0
    :goto_0
    sget-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v0, p0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    new-array v7, v0, [Ljava/lang/String;

    const-string v3, "Original"

    const/4 v13, 0x0

    aput-object v3, v7, v13

    array-length v3, p0

    invoke-static {p0, v13, v7, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    invoke-static/range {v2 .. v12}, Lcom/motorola/camera/meishe/MeisheEffects;->native_configure_bitmap_container(Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-ge v13, v0, :cond_2

    aget-object p0, v7, v13

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v6, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/motorola/camera/meishe/MeisheEffects;->native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v2, "MeisheEffects"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unable to add meishe thumbnail effect "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_1
    sget-object v3, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;

    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    monitor-exit v1

    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static declared-synchronized deinit()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/motorola/camera/meishe/MeisheEffects;->mIsInitialized:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_denit()V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/motorola/camera/meishe/MeisheEffects;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized getEffects()Ljava/util/LinkedList;
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/motorola/camera/meishe/MeisheEffects;->mEffects:Ljava/util/LinkedList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static declared-synchronized init()V
    .locals 2

    const-class v0, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/motorola/camera/meishe/MeisheEffects;->native_init()Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/meishe/MeisheEffects;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static isOriginalFilter(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Original"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static synchronized native native_add_meishe_effect_thumbnail(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
.end method

.method private static synchronized native native_clear_meishe_effect_thumbnails()V
.end method

.method private static synchronized native native_configure_bitmap_container(Ljava/lang/String;Ljava/lang/String;III[Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static synchronized native native_denit()V
.end method

.method private static synchronized native native_init()Z
.end method

.method private static synchronized native native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z
.end method

.method public static declared-synchronized processThumbnails(Landroid/media/Image;II)V
    .locals 15

    const-class v1, Lcom/motorola/camera/meishe/MeisheEffects;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    move-result v3

    const/4 p0, 0x0

    aget-object v4, v0, p0

    invoke-virtual {v4}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v4

    aget-object v5, v0, p0

    invoke-virtual {v5}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v5

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v6

    const/4 p0, 0x1

    aget-object v7, v0, p0

    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v7

    aget-object v8, v0, p0

    invoke-virtual {v8}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v8

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v9

    const/4 p0, 0x2

    aget-object v10, v0, p0

    invoke-virtual {v10}, Landroid/media/Image$Plane;->getPixelStride()I

    move-result v10

    aget-object v11, v0, p0

    invoke-virtual {v11}, Landroid/media/Image$Plane;->getRowStride()I

    move-result v11

    aget-object p0, v0, p0

    invoke-virtual {p0}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    move/from16 v13, p1

    move/from16 v14, p2

    invoke-static/range {v2 .. v14}, Lcom/motorola/camera/meishe/MeisheEffects;->native_process_thumbnails(IIIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static sortEffects([Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    array-length v1, p0

    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v2, v2

    const-string v3, "MeisheEffects"

    if-eq v1, v2, :cond_1

    const-string/jumbo p0, "sortEffects: wrong number of effects in order array"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    new-instance v1, Ljava/util/HashSet;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sget-object v2, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    array-length v4, v2

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sortEffects: effect "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not found in order list"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v2, v1

    if-nez v2, :cond_4

    goto :goto_4

    :cond_4
    move v2, v0

    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_8

    aget-object v3, v1, v2

    move v4, v0

    :goto_2
    array-length v5, p0

    if-ge v4, v5, :cond_7

    aget-object v5, p0, v4

    const-string v6, "\\."

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v0

    if-ne v2, v4, :cond_5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    aget-object v3, p0, v2

    aget-object v5, p0, v4

    aput-object v5, p0, v2

    aput-object v3, p0, v4

    goto :goto_3

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_8
    :goto_4
    sput-object p0, Lcom/motorola/camera/meishe/MeisheEffects;->mLutFiles:[Ljava/lang/String;

    const/4 p0, 0x1

    return p0
.end method
