.class public final Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;
.super Lcom/motorola/camera/ui/widgets/gl/textures/Texture;
.source "SourceFile"


# instance fields
.field public final mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

.field public final mComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

.field public final mEffectSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

.field public final mIdentityMatrix:[F

.field public final mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

.field public final mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

.field public mPreviewSize:Lcom/motorola/camera/PreviewSize;

.field public final mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

.field public volatile meisheRenderReady:Z


# direct methods
.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;Lcom/motorola/camera/PreviewSize;Lcom/motorola/camera/ui/widgets/gl/CameraPreview$1;Lcom/motorola/camera/ui/widgets/gl/iTextureManager;Lcom/motorola/camera/ui/widgets/gl/CameraPreview;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 p1, 0x10

    .line 2
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    .line 4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 5
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 6
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 7
    iput-object p3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 8
    invoke-virtual {p0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->setPreviewSize(Lcom/motorola/camera/PreviewSize;)V

    .line 9
    iput-object p4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 10
    iput-object p5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 11
    invoke-static {p1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;)V
    .locals 2

    .line 12
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    invoke-direct {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;-><init>(Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;)V

    const/16 v0, 0x10

    .line 13
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    .line 15
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    .line 16
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    .line 17
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    .line 18
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    .line 19
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    .line 20
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 21
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    .line 22
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    .line 23
    iget-object v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    .line 24
    iget-boolean p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    iput-boolean p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    return-void
.end method


# virtual methods
.method public final disableMeisheRender()V
    .locals 1

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    return-void
.end method

.method public final enableMeisheRender()V
    .locals 25

    move-object/from16 v0, p0

    invoke-static {}, Lcom/motorola/camera/settings/SettingsHelper;->isMirrorMode()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    invoke-direct {v2}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;-><init>()V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v3, v3, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    const-string v4, "MeisheRender"

    if-nez v3, :cond_1

    const-string v5, "null context, unable to extract license file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "meishe"

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v5, v7, v6, v8}, Lcom/motorola/camera/mcf/McfAlgoAssets;->extractAlgoFiles([Ljava/lang/String;Landroid/content/res/AssetManager;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v5, "Unable to copy license file"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-char v5, Ljava/io/File;->separatorChar:C

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v5, "meishe/license/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->loadFilePaths(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_2
    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "/vendor/etc/meishe/license/"

    invoke-static {v5, v4}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->loadFilePaths(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_4

    goto/16 :goto_9

    :cond_4
    new-instance v5, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v5, v1, v1}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    iput-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRational:Lcom/meicam/effect/sdk/NvsRational;

    new-instance v5, Lcom/meicam/effect/sdk/NvsRational;

    const/4 v12, 0x3

    const/4 v6, 0x4

    invoke-direct {v5, v12, v6}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    iput-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRationalPortrait:Lcom/meicam/effect/sdk/NvsRational;

    new-instance v5, Lcom/meicam/effect/sdk/NvsRational;

    invoke-direct {v5, v6, v12}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    iput-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRationalLandscape:Lcom/meicam/effect/sdk/NvsRational;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v3, v4, v8}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->init(Landroid/content/Context;Ljava/lang/String;I)Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-static {}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getInstance()Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createEffectRenderCore()Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    move-result-object v3

    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    new-instance v3, Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-direct {v3}, Lcom/meicam/effect/sdk/NvsVideoResolution;-><init>()V

    iput-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iget-object v4, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRational:Lcom/meicam/effect/sdk/NvsRational;

    iput-object v4, v3, Lcom/meicam/effect/sdk/NvsVideoResolution;->imagePAR:Lcom/meicam/effect/sdk/NvsRational;

    iget-object v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetsByOrientation:Ljava/util/ArrayList;

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v15, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->clear()V

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMeiSheVideoFxConfigs:Ljava/util/Map;

    const-string v6, "/vendor/etc/meishe/frame/"

    const-string v7, ".videofx"

    invoke-static {v6, v7, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    sget-object v5, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v5, v5, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

    const-string v6, "/vendor/etc/meishe/effect/"

    const-string v7, ".animatedsticker"

    invoke-static {v6, v7, v15, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V

    sget-object v5, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v6, Lcom/motorola/camera/AppFeatures$Feature;->CLI_MIRROR_ASSET_TYPE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/motorola/camera/AppFeatures;->getValue(Lcom/motorola/camera/AppFeatures$Feature;Ljava/lang/Number;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v11, 0x2

    invoke-static {v11}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->values(I)[I

    move-result-object v6

    array-length v7, v6

    move v9, v8

    :goto_1
    if-ge v9, v7, :cond_6

    aget v10, v6, v9

    invoke-static {v10}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v13

    if-ne v13, v5, :cond_5

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_6
    const/4 v10, 0x0

    :goto_2
    iput v10, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAssetType:I

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v13, v8

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const-string v6, ".lic"

    const-string v7, "."

    if-ge v13, v5, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v5, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v5, v6}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v6}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/effect/sdk/NvsAssetPackageManager;

    move-result-object v6

    const/4 v9, 0x1

    move-object/from16 v24, v7

    move-object v7, v5

    move-object v5, v6

    move-object/from16 v6, v24

    invoke-virtual/range {v5 .. v10}, Lcom/meicam/effect/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v5

    if-eqz v5, :cond_7

    if-eq v5, v11, :cond_7

    goto :goto_4

    :cond_7
    iget v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAssetType:I

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mFrameFilterUuid:Ljava/util/ArrayList;

    if-ne v5, v1, :cond_8

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRational:Lcom/meicam/effect/sdk/NvsRational;

    invoke-virtual {v5, v6, v9}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v5

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    if-ne v5, v11, :cond_9

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRationalPortrait:Lcom/meicam/effect/sdk/NvsRational;

    invoke-virtual {v5, v6, v9}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v5

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRationalLandscape:Lcom/meicam/effect/sdk/NvsRational;

    invoke-virtual {v5, v6, v9}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_4
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    :cond_a
    move v3, v8

    :goto_5
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v5}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->getAssetPackageManager()Lcom/meicam/effect/sdk/NvsAssetPackageManager;

    move-result-object v9

    const/4 v13, 0x1

    move/from16 v24, v11

    move-object v11, v4

    move/from16 v4, v24

    invoke-virtual/range {v9 .. v14}, Lcom/meicam/effect/sdk/NvsAssetPackageManager;->installAssetPackage(Ljava/lang/String;Ljava/lang/String;IZLjava/lang/StringBuilder;)I

    move-result v5

    if-eqz v5, :cond_b

    if-eq v5, v4, :cond_b

    goto :goto_6

    :cond_b
    iget-object v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    new-instance v9, Lcom/motorola/camera/PreviewSize;

    sget-object v10, Lcom/motorola/camera/settings/SettingsManager;->PREVIEW_SIZE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v10}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v10

    iget-object v10, v10, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v10, Landroid/util/Size;

    invoke-direct {v9, v10}, Lcom/motorola/camera/PreviewSize;-><init>(Landroid/util/Size;)V

    sget-object v10, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-static {v10, v9}, Lcom/motorola/camera/settings/SettingsManager;->getCLICodecVideoSize(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/PreviewSize;

    move-result-object v9

    new-instance v10, Lcom/meicam/effect/sdk/NvsRational;

    iget v11, v9, Lcom/motorola/camera/PreviewSize;->width:I

    iget v9, v9, Lcom/motorola/camera/PreviewSize;->height:I

    invoke-direct {v10, v11, v9}, Lcom/meicam/effect/sdk/NvsRational;-><init>(II)V

    const-wide/16 v17, 0x0

    const-wide v19, 0x7fffffffffffffffL

    const/16 v21, 0x0

    move-object/from16 v16, v5

    move-object/from16 v23, v10

    invoke-virtual/range {v16 .. v23}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createAnimatedSticker(JJZLjava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    move-result-object v5

    iget-object v9, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v5, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectFilterUuid:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_6
    add-int/lit8 v3, v3, 0x1

    move v11, v4

    goto/16 :goto_5

    :cond_c
    move v4, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mTimeStamp:J

    sget-object v3, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v3}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v3

    iget-object v3, v3, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    goto :goto_7

    :cond_d
    if-ne v5, v1, :cond_e

    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    iput v5, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    invoke-virtual {v2, v5}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->switchFrameIndex(I)V

    :cond_e
    iget v5, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    if-ne v5, v4, :cond_10

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    sub-int/2addr v3, v1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_f

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v1

    :cond_f
    iput v3, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    :cond_10
    :goto_7
    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    goto :goto_8

    :cond_11
    move v1, v8

    :goto_8
    iput-boolean v1, v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    :goto_9
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v3, 0x1c

    invoke-direct {v2, v3, v0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->runOnGlThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getLayoutSize()Landroid/graphics/PointF;
    .locals 2

    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledWidth()F

    move-result v1

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScaledHeight()F

    move-result p0

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public final declared-synchronized loadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->loadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->registerChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized onDraw([F[F)V
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    const/16 v1, 0xbe2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setVisibility$3(Z)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->releaseMeisheRender()V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mTextureManager:Lcom/motorola/camera/ui/widgets/gl/iTextureManager;

    sget-object v3, Lcom/motorola/camera/ui/widgets/gl/DrawOrder;->CAMERA_PREVIEW:Lcom/motorola/camera/ui/widgets/gl/DrawOrder;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/TextureManager;

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/TextureManager;->getComponent(Lcom/motorola/camera/ui/widgets/gl/DrawOrder;)Lcom/motorola/camera/ui/widgets/gl/iGlComponent;

    move-result-object v0

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mComponent:Lcom/motorola/camera/ui/widgets/gl/CameraPreview;

    invoke-virtual {v0, v3, v2}, Lcom/motorola/camera/ui/widgets/gl/CameraPreview;->getCameraPreviewTexCopy(Lcom/motorola/camera/ui/widgets/gl/iGlComponent;Z)Lcom/motorola/camera/ui/widgets/gl/textures/Texture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearTranslation()V

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->clearScale()V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    const/4 v4, 0x0

    invoke-static {v4, v4, v4, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clearColor(FFFF)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v3}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->getFb()I

    move-result v3

    const v4, 0x8d40

    invoke-static {v4, v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    const/16 v3, 0x4100

    invoke-static {v3}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->clear(I)V

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mIdentityMatrix:[F

    invoke-virtual {v0, v3, v3}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->draw([F[F)V

    invoke-static {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    new-array v0, v3, [I

    const v3, 0x8ca6

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    const-string v0, "glGetIntegerv"

    invoke-static {v0}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->checkGlError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    iget-object v3, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v3, v3, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget v5, v5, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->mRenderTex:I

    iget-object v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    iget v6, v6, Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewTexture;->mTextureID:I

    iget v6, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    invoke-virtual {v0, v3, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->drawFrameToGlView(III)V

    invoke-static {v4, v2}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->bindFramebuffer(II)V

    invoke-static {v1}, Lcom/motorola/camera/ui/widgets/gl/GlToolBox;->enable(I)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-static {v0, v2}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {v0, v1, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    invoke-virtual {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->draw([F[F)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final onDrawFbo([F[F)V
    .locals 1

    iget-boolean p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->meisheRenderReady:Z

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mCameraPreviewProcessingTexture:Lcom/motorola/camera/ui/widgets/gl/textures/CameraPreviewProcessingTexture;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->getScale(I)Lcom/motorola/camera/ui/widgets/gl/Vector3F;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setScale(ILcom/motorola/camera/ui/widgets/gl/Vector3F;)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    const/4 v0, 0x0

    invoke-static {p2, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMvpMatrix:[F

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mMMatrix:[F

    invoke-static {p2, p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->multiplyMatrix([F[F[F)V

    return-void
.end method

.method public final onUiEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final releaseMeisheRender()V
    .locals 6

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    if-eqz v0, :cond_9

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/effect/sdk/NvsEffect;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4, v3}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_1
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetsByOrientation:Ljava/util/ArrayList;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/effect/sdk/NvsEffect;

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v5, v4}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    invoke-virtual {v4}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetsByOrientation:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/meicam/effect/sdk/NvsEffect;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v4, v3}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearEffectResources(Lcom/meicam/effect/sdk/NvsEffect;)V

    invoke-virtual {v3}, Lcom/meicam/effect/sdk/NvsEffect;->release()V

    goto :goto_2

    :cond_5
    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :cond_6
    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-eqz v2, :cond_7

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->clearCacheResources()V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->cleanUp()V

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    invoke-virtual {v2}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->release()V

    iput-boolean v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    :cond_7
    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    new-instance v3, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;

    const/16 v4, 0x18

    invoke-direct {v3, v4}, Lcom/motorola/camera/mcf/Mcf$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mHandler:Landroid/os/Handler;

    :cond_8
    const/4 v1, -0x1

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iput-object v2, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    :cond_9
    return-void
.end method

.method public final declared-synchronized setAlpha(F)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->setAlpha(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setDisplayOrientation(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mDisplayOrientation:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    if-eqz p0, :cond_0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mDisplayOrientation:I

    :cond_0
    return-void
.end method

.method public final setPreviewSize(Lcom/motorola/camera/PreviewSize;)V
    .locals 2

    invoke-static {p1}, Lcom/motorola/camera/PreviewSize;->isValid(Lcom/motorola/camera/PreviewSize;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/Texture;->mRenderer:Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/SurfaceTextureRenderer;->mSurfaceView:Lcom/motorola/camera/ui/widgets/gl/PreviewSurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/motorola/camera/settings/SettingsManager;->getCLICodecVideoSize(Landroid/content/Context;Lcom/motorola/camera/PreviewSize;)Lcom/motorola/camera/PreviewSize;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p1, Lcom/motorola/camera/PreviewSize;->width:I

    iget p1, p1, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->setSize(II)V

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mPreviewSize:Lcom/motorola/camera/PreviewSize;

    iget v0, p0, Lcom/motorola/camera/PreviewSize;->width:I

    iget p0, p0, Lcom/motorola/camera/PreviewSize;->height:I

    iget-object p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput v0, p1, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    iput p0, p1, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method public final declared-synchronized unloadTexture()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->releaseMeisheRender()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mInputOffScreen:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mOutputTexture:Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;

    invoke-virtual {v0}, Lcom/motorola/camera/ui/widgets/gl/textures/OffScreenTexture;->unloadTexture()V

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mEffectSettingChangeListener:Lcom/motorola/camera/settings/SettingChangeListener;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_TYPE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1, v0}, Lcom/motorola/camera/settings/SettingsManager;->unregisterChangeListener(Lcom/motorola/camera/settings/SettingsManager$Key;Lcom/motorola/camera/settings/SettingChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
