.class public final synthetic Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/settings/SettingChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;->$r8$classId:I

    iput-object p2, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChange(Lcom/motorola/camera/settings/Setting;)V
    .locals 11

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;->$r8$classId:I

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground$$ExternalSyntheticLambda9;->f$0:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/MirrorPreviewTexture;->mMeisheRender:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;

    if-eqz p0, :cond_c

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    check-cast p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget-boolean v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mInitFinished:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectIndex:I

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->EFFECT_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    iget-object v1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->clickPosition:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mVideoResolution:Lcom/meicam/effect/sdk/NvsVideoResolution;

    iget-object v5, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mAnimatedStickerEffect:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->setVideoResolution(Lcom/meicam/effect/sdk/NvsVideoResolution;)V

    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    iget v6, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageWidth:I

    int-to-float v6, v6

    const/high16 v7, 0x44340000    # 720.0f

    div-float v8, v6, v7

    iget v4, v4, Lcom/meicam/effect/sdk/NvsVideoResolution;->imageHeight:I

    int-to-float v4, v4

    div-float v7, v4, v7

    iget v9, v1, Landroid/graphics/PointF;->x:F

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v6, v10

    sub-float/2addr v9, v6

    div-float/2addr v9, v8

    iput v9, v5, Landroid/graphics/PointF;->x:F

    div-float/2addr v4, v10

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v1

    div-float/2addr v4, v7

    iput v4, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v5}, Lcom/meicam/effect/sdk/NvsVideoEffectAnimatedSticker;->setTranslation(Landroid/graphics/PointF;)V

    :cond_3
    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effect:Lcom/meicam/effect/sdk/NvsEffect;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->startTimeStamp:J

    iput v3, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    iput-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    if-eq v0, v2, :cond_5

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->effectNames:Lcom/google/common/collect/RegularImmutableMap;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mEffectFilterUuid:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :cond_5
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    add-int/2addr v0, v1

    sget-object v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->FRAME_FILTERS:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    move v0, v2

    :cond_7
    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    invoke-virtual {p0, v0}, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->switchFrameIndex(I)V

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedFrameIndex:I

    iput v0, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedFrameIndex:I

    if-eq v0, v2, :cond_8

    iget-object v1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->effectNames:Lcom/google/common/collect/RegularImmutableMap;

    sget-object v2, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mFrameFilterUuid:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/RegularImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->selectedEffectName:Ljava/lang/String;

    :cond_8
    sget-object p0, Lcom/motorola/camera/settings/SettingsManager;->MIRROR_EFFECT_SAVE_STATE:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {p0, p1}, Lcom/motorola/camera/settings/SettingsManager;->set(Lcom/motorola/camera/settings/SettingsManager$Key;Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    const/4 p1, 0x3

    if-ne v0, p1, :cond_c

    iget-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    iget p1, p1, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;->effectType:I

    if-ne p1, v1, :cond_b

    goto :goto_1

    :cond_b
    if-ne p1, v3, :cond_c

    iget p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mPreviousEffectIndex:I

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mSelectedEffectIndex:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/MeisheRender;->mCurrentRenderEffect:Lcom/motorola/camera/ui/widgets/gl/textures/meishe/render/effect/RenderEffectItem;

    :cond_c
    :goto_1
    return-void

    :pswitch_0
    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;

    sget-object v0, Lcom/motorola/camera/settings/SettingsManager;->SW_FLASH:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/motorola/camera/settings/Setting;->mKey:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object p1

    invoke-static {p1}, Lcom/motorola/camera/settings/SettingsHelper;->isDisplayFlashEnabled(Lcom/motorola/camera/settings/Setting;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/widgets/gl/NavBarBackground;->reverseColor$2(Z)V

    :cond_d
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
