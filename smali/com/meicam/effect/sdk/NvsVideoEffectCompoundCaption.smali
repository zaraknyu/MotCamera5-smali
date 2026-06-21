.class public Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;
.super Lcom/meicam/effect/sdk/NvsEffect;


# static fields
.field public static final BOUNDING_TYPE_FRAME:I = 0x2

.field public static final BOUNDING_TYPE_TEXT:I = 0x0

.field public static final BOUNDING_TYPE_TEXT_FRAME:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsEffect;-><init>()V

    return-void
.end method

.method private native nativeChangeInPoint(JJ)J
.end method

.method private native nativeChangeOutPoint(JJ)J
.end method

.method private native nativeFindKeyframeTime(JLjava/lang/String;JI)J
.end method

.method private native nativeGetAnchorPoint(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetBackgroundColor(JI)Lcom/meicam/effect/sdk/NvsColor;
.end method

.method private native nativeGetBold(JI)Z
.end method

.method private native nativeGetCaptionBoundingVertices(JII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetCaptionCount(J)I
.end method

.method private native nativeGetCaptionStylePackageId(J)Ljava/lang/String;
.end method

.method private native nativeGetCaptionTranslation(J)Landroid/graphics/PointF;
.end method

.method private native nativeGetCenterAzimuthAngle(JI)F
.end method

.method private native nativeGetCenterPolarAngle(JI)F
.end method

.method private native nativeGetCompoundBoundingVertices(JI)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end method

.method private native nativeGetControlPoint(JLjava/lang/String;)Lcom/meicam/effect/sdk/NvsControlPointPair;
.end method

.method private native nativeGetDisableElegantTextHeight(JI)Z
.end method

.method private native nativeGetDrawOutline(JI)Z
.end method

.method private native nativeGetFontFamily(JI)Ljava/lang/String;
.end method

.method private native nativeGetInPoint(J)J
.end method

.method private native nativeGetItalic(JI)Z
.end method

.method private native nativeGetOpacity(J)F
.end method

.method private native nativeGetOrthoAngleRange(JI)F
.end method

.method private native nativeGetOutPoint(J)J
.end method

.method private native nativeGetOutlineColor(JI)Lcom/meicam/effect/sdk/NvsColor;
.end method

.method private native nativeGetOutlineWidth(JI)F
.end method

.method private native nativeGetPanoramicRotation(JI)F
.end method

.method private native nativeGetPanoramicScaleX(JI)F
.end method

.method private native nativeGetPanoramicScaleY(JI)F
.end method

.method private native nativeGetPolarAngleRange(JI)F
.end method

.method private native nativeGetRotationZ(J)F
.end method

.method private native nativeGetScaleX(J)F
.end method

.method private native nativeGetScaleY(J)F
.end method

.method private native nativeGetText(JI)Ljava/lang/String;
.end method

.method private native nativeGetTextColor(JI)Lcom/meicam/effect/sdk/NvsColor;
.end method

.method private native nativeGetWeight(JI)I
.end method

.method private native nativeGetZValue(J)F
.end method

.method private native nativeHasKeyframeList(JLjava/lang/String;)Z
.end method

.method private native nativeIsPanoramic(J)Z
.end method

.method private native nativeMovePosition(JJ)V
.end method

.method private native nativeRemoveAllKeyframe(JLjava/lang/String;)Z
.end method

.method private native nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z
.end method

.method private native nativeRotateCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeScaleCaption(JFLandroid/graphics/PointF;)V
.end method

.method private native nativeSetAnchorPoint(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetBackgroundColor(JLcom/meicam/effect/sdk/NvsColor;I)V
.end method

.method private native nativeSetBold(JIZ)V
.end method

.method private native nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V
.end method

.method private native nativeSetCenterAzimuthAngle(JF)V
.end method

.method private native nativeSetCenterPolarAngle(JF)V
.end method

.method private native nativeSetControlPoint(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsControlPointPair;)Z
.end method

.method private native nativeSetCurrentKeyFrameTime(JJ)V
.end method

.method private native nativeSetDisableElegantTextHeight(JIZ)V
.end method

.method private native nativeSetDrawOutline(JZI)V
.end method

.method private native nativeSetFontFamily(JILjava/lang/String;)V
.end method

.method private native nativeSetItalic(JIZ)V
.end method

.method private native nativeSetOpacity(JF)V
.end method

.method private native nativeSetOutlineColor(JLcom/meicam/effect/sdk/NvsColor;I)V
.end method

.method private native nativeSetOutlineWidth(JFI)V
.end method

.method private native nativeSetPanoramicRotation(JF)V
.end method

.method private native nativeSetPanoramicScaleX(JF)V
.end method

.method private native nativeSetPanoramicScaleY(JF)V
.end method

.method private native nativeSetPolarAngleRange(JF)V
.end method

.method private native nativeSetRotationZ(JF)V
.end method

.method private native nativeSetScaleX(JF)V
.end method

.method private native nativeSetScaleY(JF)V
.end method

.method private native nativeSetText(JILjava/lang/String;)V
.end method

.method private native nativeSetTextColor(JILcom/meicam/effect/sdk/NvsColor;)V
.end method

.method private native nativeSetVideoResolution(JLcom/meicam/effect/sdk/NvsVideoResolution;)V
.end method

.method private native nativeSetWeight(JII)V
.end method

.method private native nativeSetZValue(JF)V
.end method

.method private native nativeTranslateCaption(JLandroid/graphics/PointF;)V
.end method


# virtual methods
.method public changeInPoint(J)J
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeChangeInPoint(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public changeOutPoint(J)J
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeChangeOutPoint(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public findKeyframeTime(Ljava/lang/String;JI)J
    .locals 7

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeFindKeyframeTime(JLjava/lang/String;JI)J

    move-result-wide p0

    return-wide p0
.end method

.method public getAnchorPoint()Landroid/graphics/PointF;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetAnchorPoint(J)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getBackgroundColor(I)Lcom/meicam/effect/sdk/NvsColor;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetBackgroundColor(JI)Lcom/meicam/effect/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getBold(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetBold(JI)Z

    move-result p0

    return p0
.end method

.method public getCaptionBoundingVertices(II)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCaptionBoundingVertices(JII)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCaptionCount()I
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCaptionCount(J)I

    move-result p0

    return p0
.end method

.method public getCaptionStylePackageId()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCaptionStylePackageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCaptionTranslation()Landroid/graphics/PointF;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCaptionTranslation(J)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method public getCenterAzimuthAngle(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCenterAzimuthAngle(JI)F

    move-result p0

    return p0
.end method

.method public getCenterPolarAngle(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCenterPolarAngle(JI)F

    move-result p0

    return p0
.end method

.method public getCompoundBoundingVertices(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetCompoundBoundingVertices(JI)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getControlPoint(Ljava/lang/String;)Lcom/meicam/effect/sdk/NvsControlPointPair;
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetControlPoint(JLjava/lang/String;)Lcom/meicam/effect/sdk/NvsControlPointPair;

    move-result-object p0

    return-object p0
.end method

.method public getDisableElegantTextHeight(I)Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetDisableElegantTextHeight(JI)Z

    move-result p0

    return p0
.end method

.method public getDrawOutline(I)Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetDrawOutline(JI)Z

    move-result p0

    return p0
.end method

.method public getFontFamily(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetFontFamily(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getInPoint()J
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetInPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItalic(I)Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetItalic(JI)Z

    move-result p0

    return p0
.end method

.method public getOpacity()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetOpacity(J)F

    move-result p0

    return p0
.end method

.method public getOrthoAngleRange(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetOrthoAngleRange(JI)F

    move-result p0

    return p0
.end method

.method public getOutPoint()J
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetOutPoint(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getOutlineColor(I)Lcom/meicam/effect/sdk/NvsColor;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetOutlineColor(JI)Lcom/meicam/effect/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getOutlineWidth(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetOutlineWidth(JI)F

    move-result p0

    return p0
.end method

.method public getPanoramicRotation(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetPanoramicRotation(JI)F

    move-result p0

    return p0
.end method

.method public getPanoramicScaleX(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetPanoramicScaleX(JI)F

    move-result p0

    return p0
.end method

.method public getPanoramicScaleY(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetPanoramicScaleY(JI)F

    move-result p0

    return p0
.end method

.method public getPolarAngleRange(I)F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetPolarAngleRange(JI)F

    move-result p0

    return p0
.end method

.method public getRotationZ()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetRotationZ(J)F

    move-result p0

    return p0
.end method

.method public getScaleX()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetScaleX(J)F

    move-result p0

    return p0
.end method

.method public getScaleY()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetScaleY(J)F

    move-result p0

    return p0
.end method

.method public getText(I)Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetText(JI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTextColor(I)Lcom/meicam/effect/sdk/NvsColor;
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetTextColor(JI)Lcom/meicam/effect/sdk/NvsColor;

    move-result-object p0

    return-object p0
.end method

.method public getWeight(I)I
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetWeight(JI)I

    move-result p0

    return p0
.end method

.method public getZValue()F
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeGetZValue(J)F

    move-result p0

    return p0
.end method

.method public hasKeyframeList(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeHasKeyframeList(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPanoramic()Z
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeIsPanoramic(J)Z

    move-result p0

    return p0
.end method

.method public movePosition(J)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeMovePosition(JJ)V

    return-void
.end method

.method public removeAllKeyframe(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeRemoveAllKeyframe(JLjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeKeyframeAtTime(Ljava/lang/String;J)Z
    .locals 6

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v1

    move-object v0, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeRemoveKeyframeAtTime(JLjava/lang/String;J)Z

    move-result p0

    return p0
.end method

.method public rotateCaption(FLandroid/graphics/PointF;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeRotateCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public rotateCaptionAroundCenter(FI)V
    .locals 6

    invoke-virtual {p0, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->getCompoundBoundingVertices(I)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    move v2, v0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v5

    iget v4, v4, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/graphics/PointF;

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    div-float/2addr v2, v1

    invoke-direct {p2, v0, v2}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->rotateCaption(FLandroid/graphics/PointF;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public scaleCaption(FLandroid/graphics/PointF;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeScaleCaption(JFLandroid/graphics/PointF;)V

    return-void
.end method

.method public setAnchorPoint(Landroid/graphics/PointF;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetAnchorPoint(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setBackgroundColor(Lcom/meicam/effect/sdk/NvsColor;I)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetBackgroundColor(JLcom/meicam/effect/sdk/NvsColor;I)V

    return-void
.end method

.method public setBold(IZ)V
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetBold(JIZ)V

    return-void
.end method

.method public setCaptionTranslation(Landroid/graphics/PointF;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetCaptionTranslation(JLandroid/graphics/PointF;)V

    return-void
.end method

.method public setCenterAzimuthAngle(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetCenterAzimuthAngle(JF)V

    return-void
.end method

.method public setCenterPolarAngle(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetCenterPolarAngle(JF)V

    return-void
.end method

.method public setControlPoint(Ljava/lang/String;Lcom/meicam/effect/sdk/NvsControlPointPair;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/meicam/effect/sdk/NvsEffect;->getInternalObject()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetControlPoint(JLjava/lang/String;Lcom/meicam/effect/sdk/NvsControlPointPair;)Z

    move-result p0

    return p0
.end method

.method public setCurrentKeyFrameTime(J)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetCurrentKeyFrameTime(JJ)V

    return-void
.end method

.method public setDisableElegantTextHeight(IZ)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetDisableElegantTextHeight(JIZ)V

    return-void
.end method

.method public setDrawOutline(ZI)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetDrawOutline(JZI)V

    return-void
.end method

.method public setFontFamily(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetFontFamily(JILjava/lang/String;)V

    return-void
.end method

.method public setItalic(IZ)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetItalic(JIZ)V

    return-void
.end method

.method public setOpacity(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetOpacity(JF)V

    return-void
.end method

.method public setOutlineColor(Lcom/meicam/effect/sdk/NvsColor;I)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetOutlineColor(JLcom/meicam/effect/sdk/NvsColor;I)V

    return-void
.end method

.method public setOutlineWidth(FI)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetOutlineWidth(JFI)V

    return-void
.end method

.method public setPanoramicRotation(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetPanoramicRotation(JF)V

    return-void
.end method

.method public setPanoramicScaleX(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetPanoramicScaleX(JF)V

    return-void
.end method

.method public setPanoramicScaleY(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetPanoramicScaleY(JF)V

    return-void
.end method

.method public setPolarAngleRange(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetPolarAngleRange(JF)V

    return-void
.end method

.method public setRotationZ(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetRotationZ(JF)V

    return-void
.end method

.method public setScaleX(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetScaleX(JF)V

    return-void
.end method

.method public setScaleY(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetScaleY(JF)V

    return-void
.end method

.method public setText(ILjava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetText(JILjava/lang/String;)V

    return-void
.end method

.method public setTextColor(ILcom/meicam/effect/sdk/NvsColor;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetTextColor(JILcom/meicam/effect/sdk/NvsColor;)V

    return-void
.end method

.method public setVideoResolution(Lcom/meicam/effect/sdk/NvsVideoResolution;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetVideoResolution(JLcom/meicam/effect/sdk/NvsVideoResolution;)V

    return-void
.end method

.method public setWeight(II)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetWeight(JII)V

    return-void
.end method

.method public setZValue(F)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeSetZValue(JF)V

    return-void
.end method

.method public translateCaption(Landroid/graphics/PointF;)V
    .locals 2

    invoke-static {}, Lcom/meicam/effect/sdk/NvsUtils;->checkFunctionInMainThread()Z

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsEffect;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsVideoEffectCompoundCaption;->nativeTranslateCaption(JLandroid/graphics/PointF;)V

    return-void
.end method
