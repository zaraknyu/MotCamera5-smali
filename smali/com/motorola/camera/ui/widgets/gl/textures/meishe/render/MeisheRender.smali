.class public final Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EFFECT_FILTERS:Ljava/util/ArrayList;

.field public static final FRAME_FILTERS:Ljava/util/ArrayList;

.field public static final LICENSE_FILES:Ljava/util/ArrayList;

.field public static final mEffectFilterUuid:Ljava/util/ArrayList;

.field public static final mFrameFilterUuid:Ljava/util/ArrayList;


# instance fields
.field public final effectNames:Lcom/google/common/collect/RegularImmutableMap;

.field public final mAnimatedStickerEffect:Ljava/util/ArrayList;

.field public mAssetType:I

.field public mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

.field public mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

.field public mDisplayOrientation:I

.field public mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

.field public mEffectRenderInit:Z

.field public mHandler:Landroid/os/Handler;

.field public mInitFinished:Z

.field public mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

.field public mNvsRational:Lcom/meicam/effect/sdk/NvsRational;

.field public mNvsRationalLandscape:Lcom/meicam/effect/sdk/NvsRational;

.field public mNvsRationalPortrait:Lcom/meicam/effect/sdk/NvsRational;

.field public volatile mPreviousEffectIndex:I

.field public mSelectedEffectIndex:I

.field public mSelectedFrameIndex:I

.field public mTimeStamp:J

.field public final mVideoFxAssetEffect:Ljava/util/ArrayList;

.field public final mVideoFxAssetsByOrientation:Ljava/util/ArrayList;

.field public final mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->LICENSE_FILES:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mFrameFilterUuid:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectFilterUuid:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    iput-boolean v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mHandler:Landroid/os/Handler;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetsByOrientation:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    new-instance v1, Lcom/meicam/effect/sdk/NvsVideoResolution;

    invoke-direct {v1}, Lcom/meicam/effect/sdk/NvsVideoResolution;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    const/4 v0, -0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    new-instance v0, Lcom/google/common/base/Splitter;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/common/base/Splitter;-><init>(I)V

    const-string v1, "DD16A691-77FE-4452-944C-6F7423C720C0"

    const-string v2, "BROKEN"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "0A3FC1AC-3918-4D65-9649-147E692D20B7"

    const-string v2, "FROST"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "C1E6744B-A8CA-4A37-8FB0-1A2E1A79B252"

    const-string v2, "FREEZE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "07340B0D-4DF1-4131-81EF-45684DEC6EAC"

    const-string v2, "FOG"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "36DC27E8-48CF-4F62-BCB9-820773367743"

    const-string v2, "SIMPLE"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "0A3D2B0B-8ED5-4994-895B-CC156209BD80"

    const-string v2, "CARTOON"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v1, "E2AAEC58-4CEF-4659-8117-81B681307405"

    const-string v2, "RETRO"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/Splitter;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/google/common/base/Splitter;->buildOrThrow()Lcom/google/common/collect/RegularImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->effectNames:Lcom/google/common/collect/RegularImmutableMap;

    return-void
.end method

.method public static loadEffectFilePaths(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/Map;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2, p1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static loadFilePaths(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".lic"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final drawFrameToGlView(III)V
    .locals 25

    move-object/from16 v0, p0

    move/from16 v1, p3

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    if-nez v2, :cond_0

    goto/16 :goto_7

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mTimeStamp:J

    sub-long/2addr v2, v4

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-eqz v4, :cond_14

    iget-object v5, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iget v6, v5, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    iget v5, v5, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    iget-object v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v7, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-boolean v8, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-nez v8, :cond_2

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->initialize(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    :cond_2
    iget-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-gez v7, :cond_3

    iput-wide v2, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    :cond_3
    iget-wide v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    sub-long/2addr v2, v7

    iget v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    invoke-static {v7}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v7

    const/16 v8, 0x10e

    const/16 v9, 0x5a

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    if-eqz v7, :cond_6

    if-eq v7, v10, :cond_5

    :cond_4
    move-object v14, v12

    goto :goto_2

    :cond_5
    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    :goto_0
    move-object v14, v7

    goto :goto_2

    :cond_6
    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAssetType:I

    if-ne v7, v10, :cond_7

    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    goto :goto_0

    :cond_7
    if-ne v7, v11, :cond_4

    iget v7, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mDisplayOrientation:I

    if-eq v7, v9, :cond_9

    if-ne v7, v8, :cond_8

    goto :goto_1

    :cond_8
    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->portraitEffect:Lcom/meicam/effect/sdk/NvsEffect;

    goto :goto_0

    :cond_9
    :goto_1
    iget-object v7, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->landscapeEffect:Lcom/meicam/effect/sdk/NvsEffect;

    goto :goto_0

    :goto_2
    if-nez v14, :cond_a

    goto/16 :goto_7

    :cond_a
    iget v4, v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const-wide/16 v15, 0x3e8

    mul-long v18, v2, v15

    iget-boolean v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderInit:Z

    if-eqz v2, :cond_14

    iget-object v2, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsEffectSdkContext:Lcom/meicam/effect/sdk/NvsEffectSdkContext;

    if-eqz v2, :cond_14

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    if-nez v13, :cond_b

    goto/16 :goto_7

    :cond_b
    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iput v6, v3, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    iput v5, v3, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    if-ne v4, v10, :cond_13

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAssetType:I

    if-ne v4, v10, :cond_c

    iget-object v12, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRational:Lcom/meicam/effect/sdk/NvsRational;

    goto :goto_5

    :cond_c
    if-ne v4, v11, :cond_f

    iget v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mDisplayOrientation:I

    if-eq v4, v9, :cond_e

    if-ne v4, v8, :cond_d

    goto :goto_4

    :cond_d
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRationalPortrait:Lcom/meicam/effect/sdk/NvsRational;

    :goto_3
    move-object v12, v4

    goto :goto_5

    :cond_e
    :goto_4
    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mNvsRationalLandscape:Lcom/meicam/effect/sdk/NvsRational;

    goto :goto_3

    :cond_f
    :goto_5
    if-eqz v12, :cond_13

    const-string v3, "Transform 2D"

    invoke-virtual {v2, v3, v12}, Lcom/meicam/effect/sdk/NvsEffectSdkContext;->createVideoEffect(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsRational;)Lcom/meicam/effect/sdk/NvsVideoEffect;

    move-result-object v2

    iget v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAssetType:I

    if-ne v3, v11, :cond_10

    move v3, v9

    goto :goto_6

    :cond_10
    const/16 v3, 0xb4

    :goto_6
    if-eq v1, v9, :cond_11

    if-ne v1, v8, :cond_12

    :cond_11
    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    rem-int/lit16 v1, v1, 0x168

    :cond_12
    int-to-float v1, v1

    float-to-double v3, v1

    const-string v5, "Rotation"

    invoke-virtual {v2, v5, v3, v4}, Lcom/meicam/effect/sdk/NvsEffect;->setFloatVal(Ljava/lang/String;D)V

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/16 v24, 0x0

    move/from16 v21, p2

    move-object/from16 v17, v3

    move-object/from16 v20, v4

    move-wide/from16 v22, v18

    move/from16 v19, p1

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v24}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    move-wide/from16 v18, v22

    iget-object v13, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    const/16 v20, 0x0

    move/from16 v17, p1

    move/from16 v15, p2

    move-object/from16 v16, v3

    invoke-virtual/range {v13 .. v20}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    neg-float v1, v1

    float-to-double v3, v1

    invoke-virtual {v2, v5, v3, v4}, Lcom/meicam/effect/sdk/NvsEffect;->setFloatVal(Ljava/lang/String;D)V

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectRenderCore:Lcom/meicam/effect/sdk/NvsEffectRenderCore;

    iget-object v0, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    move-object/from16 v20, v0

    move-object/from16 v17, v1

    move/from16 v19, p1

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v24}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    return-void

    :cond_13
    const/16 v20, 0x0

    move/from16 v15, p1

    move/from16 v17, p2

    move-object/from16 v16, v3

    invoke-virtual/range {v13 .. v20}, Lcom/meicam/effect/sdk/NvsEffectRenderCore;->renderEffect(Lcom/meicam/effect/sdk/NvsEffect;ILcom/meicam/effect/sdk/NvsVideoResolution;IJI)I

    :cond_14
    :goto_7
    return-void
.end method

.method public final switchFrameIndex(I)V
    .locals 6

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    return-void

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAssetType:I

    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetEffect:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    sget-object v4, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq p1, v4, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/effect/sdk/NvsEffect;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    return-void

    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoFxAssetsByOrientation:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge p1, v5, :cond_5

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/meicam/effect/sdk/NvsEffect;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/meicam/effect/sdk/NvsEffect;

    if-eqz p1, :cond_5

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v4, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->portraitEffect:Lcom/meicam/effect/sdk/NvsEffect;

    iput-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->landscapeEffect:Lcom/meicam/effect/sdk/NvsEffect;

    iput-wide v1, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    iput v3, v0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    iput-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :cond_5
    :goto_0
    return-void
.end method
