.class public final Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;
.super Lcom/motorola/camera/ui/widgets/gl/iGlComponent;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/ui/widgets/gl/iTextureAtlas;


# static fields
.field public static final VERTICES_DATA:[F


# instance fields
.field public mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

.field public mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

.field public mId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public static getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/google/zxing/Result;
    .locals 7

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->LDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_0

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto/16 :goto_7

    :cond_0
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->MDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_1

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto/16 :goto_7

    :cond_1
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->TVDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_2

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto/16 :goto_7

    :cond_2
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_f

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI260_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v1, p0, :cond_f

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI280_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v1, p0, :cond_f

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v1, p0, :cond_f

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SMALL_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v1, p0, :cond_3

    goto/16 :goto_6

    :cond_3
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_e

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v1, p0, :cond_4

    goto/16 :goto_5

    :cond_4
    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v1, p0, :cond_d

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI300_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v1, p0, :cond_5

    goto/16 :goto_3

    :cond_5
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI400_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI340_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI420_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI360_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI450_LARGE_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI440_LARGE2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_c

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI390_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_6

    goto :goto_2

    :cond_6
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_b

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_b

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_LARGER2_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_7

    goto :goto_1

    :cond_7
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-eq v0, p0, :cond_a

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->HDPI560_LARGEST_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_8

    goto :goto_0

    :cond_8
    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    if-ne v0, p0, :cond_9

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_7

    :cond_9
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_7

    :cond_a
    :goto_0
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 p0, 0x4

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    :cond_b
    :goto_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_7

    :cond_c
    :goto_2
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 p0, 0x3

    invoke-direct {v0, p0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    sget-object p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XXHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    goto :goto_7

    :cond_d
    :goto_3
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    :goto_4
    move-object v6, v0

    move-object v0, p0

    move-object p0, v6

    goto :goto_7

    :cond_e
    :goto_5
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_7

    :cond_f
    :goto_6
    new-instance p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/Atlashdpi;-><init>(I)V

    goto :goto_4

    :goto_7
    new-instance v1, Lcom/google/zxing/Result;

    const/16 v2, 0x16

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/zxing/Result;-><init>(IZ)V

    iput-object v0, v1, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    iput-object p0, v1, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    const-string v0, "TextureAtlasComponent"

    const-string v2, "Unable to load atlas for DPI "

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->mName:Ljava/lang/String;

    const-string/jumbo v4, "textureatlas/drawable_atlas_texture_"

    const-string v5, ".webp"

    invoke-static {v4, v3, v5}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_0
    sget-object v5, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-nez v4, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_8

    :catchall_0
    move-exception v5

    goto :goto_9

    :cond_10
    :goto_8
    if-eqz v3, :cond_12

    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_c

    :catch_0
    move-exception v3

    goto :goto_b

    :goto_9
    if-eqz v3, :cond_11

    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v5, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_11
    :goto_a
    throw v5
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_12
    :goto_c
    iput-object v4, v1, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized getSpriteData(I)Landroidx/media3/extractor/text/pgs/PgsParser;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    new-instance v1, Landroidx/media3/extractor/text/pgs/PgsParser;

    const/4 v2, 0x7

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroidx/media3/extractor/text/pgs/PgsParser;-><init>(IZ)V

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSourceSize:Landroid/graphics/Point;

    invoke-direct {v2, v3}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    iput-object v2, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->buffer:Ljava/lang/Object;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mSpriteSourceSize:Landroid/graphics/Rect;

    invoke-direct {v2, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->inflatedBuffer:Ljava/lang/Object;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v0, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->cueBuilder:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getVerticeData(I)[F

    move-result-object p1

    iput-object p1, v1, Landroidx/media3/extractor/text/pgs/PgsParser;->inflater:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :try_start_1
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Sprite not found"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final getStatesToListenFor()Ljava/util/Collection;
    .locals 0

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "TextureAtlasComponent"

    return-object p0
.end method

.method public final getVerticeData(I)[F
    .locals 3

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast p0, Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/AtlasData;->mFrameRel:Landroid/graphics/RectF;

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0}, Landroid/graphics/RectF;-><init>()V

    :goto_0
    const/16 p1, 0x14

    new-array v0, p1, [F

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->VERTICES_DATA:[F

    const/4 v2, 0x0

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p1, p0, Landroid/graphics/RectF;->left:F

    const/16 v1, 0xd

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    iget p1, p0, Landroid/graphics/RectF;->bottom:F

    const/16 v1, 0x9

    aput p1, v0, v1

    const/4 v1, 0x4

    aput p1, v0, v1

    iget p1, p0, Landroid/graphics/RectF;->right:F

    const/16 v1, 0x12

    aput p1, v0, v1

    const/16 v1, 0x8

    aput p1, v0, v1

    iget p0, p0, Landroid/graphics/RectF;->top:F

    const/16 p1, 0x13

    aput p0, v0, p1

    const/16 p1, 0xe

    aput p0, v0, p1

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final loadTextures()Z
    .locals 5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/iGlComponent;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;->mSurfaceDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/google/zxing/Result;

    move-result-object v0

    iget-object v3, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast v3, Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;->XHDPI_SCALE:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->getAtlasMap(Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;)Lcom/google/zxing/Result;

    move-result-object v0

    :cond_0
    iget-object v3, v0, Lcom/google/zxing/Result;->resultPoints:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasDpi:Lcom/motorola/camera/ui/widgets/gl/textures/ResourceTexture$DPI;

    iget-object v3, v0, Lcom/google/zxing/Result;->format:Ljava/lang/Object;

    check-cast v3, Landroidx/sqlite/db/SimpleSQLiteQuery;

    iput-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    const v3, 0x84c2

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->activeTexture(I)V

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/16 v4, 0xde1

    invoke-static {v4}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->generateTexture(I)I

    move-result v4

    iput v4, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    iget-object p0, v0, Lcom/google/zxing/Result;->text:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Bitmap;

    invoke-static {p0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->texImage2D(Landroid/graphics/Bitmap;)V

    const/4 p0, -0x1

    if-eq v3, p0, :cond_1

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    :cond_1
    sget-boolean p0, Lcom/motorola/camera/Util;->KPI:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Atlas image loaded dur:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "TextureAtlasComponent"

    invoke-static {v1, v2, p0, v0}, Lcom/motorola/camera/Camera$$ExternalSyntheticOutline0;->m(JLjava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final onDraw([F[F[F)V
    .locals 0

    return-void
.end method

.method public final onPreDraw([F[F[F)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onSurfaceChanged(Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/PreviewSize;)V
    .locals 0

    return-void
.end method

.method public final stateChanged(Lcom/google/zxing/Result;)V
    .locals 0

    return-void
.end method

.method public final unloadTextures()V
    .locals 2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mAtlasMap:Landroidx/sqlite/db/SimpleSQLiteQuery;

    iget-object v0, v0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:Ljava/lang/Object;

    check-cast v0, Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->deleteTexture(I)V

    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/textureatlas/TextureAtlasComponent;->mId:I

    :cond_0
    return-void
.end method
