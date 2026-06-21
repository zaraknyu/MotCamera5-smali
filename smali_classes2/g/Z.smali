.class public abstract Lg/Z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [F

    sput-object v0, Lg/Z;->a:[F

    return-void
.end method

.method public static a(Ljava/io/RandomAccessFile;I)Lg/T;
    .locals 13

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 77
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    .line 78
    :goto_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v4

    .line 79
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 80
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v6

    const/4 v2, 0x4

    if-lt p1, v2, :cond_1

    .line 81
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v2

    :goto_1
    move v7, v2

    goto :goto_2

    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :goto_2
    move v2, v1

    .line 82
    :goto_3
    sget-object v5, Lg/Z;->a:[F

    const/16 v8, 0x9

    if-ge v2, v8, :cond_2

    .line 83
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v8

    aput v8, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 84
    :cond_2
    new-instance v9, Landroid/graphics/Matrix;

    invoke-direct {v9}, Landroid/graphics/Matrix;-><init>()V

    .line 85
    invoke-virtual {v9, v5}, Landroid/graphics/Matrix;->setValues([F)V

    .line 86
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move v5, v1

    :goto_4
    if-ge v5, v2, :cond_3

    .line 88
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v10

    .line 89
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readFloat()F

    move-result v11

    .line 90
    new-instance v12, Landroid/graphics/PointF;

    invoke-direct {v12, v10, v11}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 91
    :cond_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v2, :cond_5

    const/4 v2, 0x5

    if-lt p1, v2, :cond_4

    .line 92
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    :cond_4
    move v10, v1

    .line 93
    new-instance v2, Lg/T;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v5

    invoke-direct/range {v2 .. v10}, Lg/T;-><init>(IILandroidx/compose/runtime/ParcelableSnapshotMutableState;FFLjava/util/ArrayList;Landroid/graphics/Matrix;I)V

    return-object v2

    .line 94
    :cond_5
    new-instance p0, Ljava/lang/Exception;

    const-string p1, "MarkData deserialization failed - point size mismatch"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;)Lg/U;
    .locals 7

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    .line 2
    new-instance v0, Ljava/io/File;

    const-string v2, "markData"

    invoke-static {v2}, La/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-direct {v0, v2, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_6

    .line 3
    :try_start_0
    new-instance p0, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {p0, v0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :try_start_1
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v3, 0x4

    if-eq v0, v3, :cond_2

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Eraser Mark deserialization version unsupported"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_2
    :goto_1
    if-lt v0, v2, :cond_3

    .line 6
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v2

    goto :goto_2

    :cond_3
    const v2, 0x7fffffff

    .line 7
    :goto_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v3

    .line 8
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_4

    .line 9
    invoke-static {p0, v0}, Lg/Z;->a(Ljava/io/RandomAccessFile;I)Lg/T;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 10
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_5

    .line 11
    new-instance v0, Lg/U;

    invoke-direct {v0, v2, v4}, Lg/U;-><init>(ILjava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :try_start_2
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    goto :goto_5

    .line 13
    :cond_5
    :try_start_3
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "MarkData deserialization failed - mark size mismatch"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 14
    :goto_4
    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v2

    :try_start_5
    invoke-static {p0, v0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 15
    :goto_5
    const-string v0, "MarkDataSerializer"

    const-string v2, "Failed Deserializing marks"

    .line 16
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    return-object v1
.end method

.method public static a(Ljava/io/File;IZ)Ljava/io/File;
    .locals 13

    .line 37
    const-string v0, "PhotoLibraryHelper"

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 38
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 39
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const v3, 0x7fffffff

    if-ne p1, v3, :cond_4

    .line 40
    sget-object p1, Lg/x;->d:Landroid/app/ActivityManager$MemoryInfo;

    sget-object v3, Lg/x;->c:Landroid/app/ActivityManager;

    .line 41
    sget-wide v4, Lg/x;->a:J

    const-wide/16 v6, 0x0

    cmp-long v4, v6, v4

    if-nez v4, :cond_0

    .line 42
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 43
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v4, Lg/x;->a:J

    .line 44
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sput-wide v4, Lg/x;->b:J

    .line 45
    :cond_0
    sget-wide v4, Lg/x;->a:J

    const-wide/32 v8, 0x7d000000

    cmp-long v4, v8, v4

    if-gtz v4, :cond_3

    .line 46
    sget-wide v4, Lg/x;->b:J

    cmp-long v4, v6, v4

    if-nez v4, :cond_1

    .line 47
    invoke-virtual {v3, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 48
    iget-wide v3, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    sput-wide v3, Lg/x;->a:J

    .line 49
    iget-wide v3, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sput-wide v3, Lg/x;->b:J

    .line 50
    :cond_1
    sget-wide v3, Lg/x;->b:J

    const-wide/32 v5, 0x3e800000

    cmp-long p1, v5, v3

    if-lez p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x1000000

    goto :goto_1

    :cond_3
    :goto_0
    const/high16 p1, 0xc00000

    .line 51
    :cond_4
    :goto_1
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, p1

    const v6, 0x3f99999a    # 1.2f

    mul-float v7, v5, v6

    const/4 v8, 0x0

    int-to-float v9, v8

    add-float/2addr v7, v9

    mul-int/2addr v3, v4

    move v4, v2

    :goto_2
    int-to-float v9, v3

    cmpl-float v9, v9, v7

    if-lez v9, :cond_5

    .line 52
    div-int/lit8 v3, v3, 0x4

    mul-int/lit8 v4, v4, 0x2

    goto :goto_2

    .line 53
    :cond_5
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v7, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v3, v7

    const v7, 0x7a120

    sub-int/2addr v3, v7

    if-le v3, p1, :cond_6

    move v3, v2

    goto :goto_3

    :cond_6
    move v3, v8

    :goto_3
    if-gt v4, v2, :cond_8

    if-eqz p2, :cond_7

    if-eqz v3, :cond_7

    goto :goto_4

    :cond_7
    return-object p0

    :cond_8
    :goto_4
    const/4 v3, 0x0

    .line 54
    :try_start_0
    new-instance v9, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v9}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 55
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v10, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 56
    iput v4, v9, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 57
    sget-object v4, Lg/x;->c:Landroid/app/ActivityManager;

    .line 58
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 59
    iget-object v10, v9, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const-string v11, "inPreferredConfig"

    invoke-static {v10, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-static {v4, v10}, Lg/x;->a(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3

    if-nez v4, :cond_9

    goto :goto_8

    .line 61
    :cond_9
    :try_start_1
    iget v10, v9, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v9, v9, Landroid/graphics/BitmapFactory$Options;->outHeight:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    mul-int/2addr v10, v9

    sub-int/2addr v10, v7

    if-le v10, p1, :cond_a

    move v7, v2

    goto :goto_5

    :cond_a
    move v7, v8

    :goto_5
    if-eqz p2, :cond_b

    if-eqz v7, :cond_b

    .line 62
    :try_start_2
    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v9, p2

    iget p2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v11, p2

    div-double/2addr v9, v11

    int-to-double p1, p1

    div-double/2addr p1, v9

    .line 63
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-int p1, p1

    int-to-double v11, p1

    mul-double/2addr v11, v9

    double-to-int p2, v11

    .line 64
    invoke-static {v4, p1, p2, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    const-string p2, "createScaledBitmap(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_b

    .line 66
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-object v4, p1

    goto :goto_6

    :catch_0
    move-exception p0

    goto :goto_9

    .line 67
    :catch_1
    :try_start_3
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 68
    invoke-static {}, Ljava/lang/System;->gc()V

    div-float/2addr v5, v6

    float-to-int p1, v5

    .line 69
    invoke-static {p0, p1, v8}, Lg/Z;->a(Ljava/io/File;IZ)Ljava/io/File;

    move-result-object p0

    return-object p0

    :catch_2
    move-exception p0

    goto :goto_7

    .line 70
    :cond_b
    :goto_6
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 71
    sget-object p2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x64

    invoke-virtual {v4, p2, v1, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 72
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V

    .line 73
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    return-object p0

    :catch_3
    move-exception p0

    move-object v4, v3

    .line 74
    :goto_7
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_c

    .line 75
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_c
    :goto_8
    return-object v3

    .line 76
    :goto_9
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lg/Z;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 12

    .line 25
    const-string v0, "originalImages"

    invoke-static {v0}, La/l;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 26
    sget-object v1, Lg/x;->c:Landroid/app/ActivityManager;

    .line 27
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 28
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v2, "loadLabel(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 30
    new-instance v2, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/sql/Timestamp;-><init>(J)V

    .line 31
    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "toString(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v5, 0x3a

    const/16 v6, 0x2d

    invoke-static {v3, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "_OriginalImage_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 32
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v3, 0x1

    move v9, v3

    .line 33
    :goto_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 34
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    const-string v11, "%04d"

    invoke-static {v7, v11, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 35
    invoke-virtual {v2}, Ljava/sql/Timestamp;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v5, v6}, Lkotlin/text/StringsKt__StringsJVMKt;->replace$default(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 36
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v0, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/2addr v9, v3

    move-object v7, v10

    goto :goto_0

    :cond_0
    return-object v7
.end method

.method public static a(Z)Ljava/io/File;
    .locals 3

    .line 17
    sget-object v0, Lg/x;->c:Landroid/app/ActivityManager;

    .line 18
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 19
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    const-string v1, "loadLabel(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {}, La/z;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    .line 22
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_AdobeScanImage_"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_0

    const-string p0, ".enc"

    goto :goto_0

    :cond_0
    const-string p0, ".data"

    :goto_0
    invoke-static {v0, p0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 24
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
