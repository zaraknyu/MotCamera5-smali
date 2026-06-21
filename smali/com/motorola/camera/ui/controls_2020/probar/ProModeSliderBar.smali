.class public final Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;
.super Landroidx/appcompat/widget/AppCompatSeekBar;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B\u001b\u0008\u0016\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u001b\u0010\u000b\u001a\u00020\n2\u000c\u0010\t\u001a\u0008\u0012\u0002\u0008\u0003\u0018\u00010\u0008\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\u000f\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\r\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;",
        "Landroidx/appcompat/widget/AppCompatSeekBar;",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;)V",
        "Lcom/motorola/camera/settings/SettingsManager$Key;",
        "key",
        "",
        "setCurrentKey",
        "(Lcom/motorola/camera/settings/SettingsManager$Key;)V",
        "",
        "orientation",
        "setOrientation",
        "(I)V",
        "MotCamera5-v10.0.47.24_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public mAnimationEndTime:J

.field public mAnimationStartTime:J

.field public final mBoundsRect:Landroid/graphics/Rect;

.field public mClockwise:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentDegree:I

.field public mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

.field public final mDefaultValue:Ljava/lang/String;

.field public final mExpStrings:Ljava/util/ArrayList;

.field public final mISOStrings:Ljava/util/ArrayList;

.field public final mIsRtl:Z

.field public final mMaxValue:Ljava/lang/String;

.field public mMeasuredWidth:I

.field public final mMfBitmaps:Ljava/util/ArrayList;

.field public final mMinValue:Ljava/lang/String;

.field public mPaddingLeft:I

.field public mPaddingRight:I

.field public mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field public mSeekLength:F

.field public final mShutterStrings:Ljava/util/ArrayList;

.field public mStartDegree:I

.field public mStartGap:F

.field public mTargetDegree:I

.field public final mTextPaint:Landroid/text/TextPaint;

.field public final mWhiteBalanceBitmaps:Ljava/util/ArrayList;

.field public final marginTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    new-instance v1, Landroid/text/TextPaint;

    invoke-direct {v1}, Landroid/text/TextPaint;-><init>()V

    iput-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v2, 0x42b40000    # 90.0f

    iput v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMfBitmaps:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mISOStrings:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mShutterStrings:Ljava/util/ArrayList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mWhiteBalanceBitmaps:Ljava/util/ArrayList;

    const/high16 v6, 0x41900000    # 18.0f

    iput v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v6, :cond_0

    const v7, 0x7f1203c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    const v7, 0x7f1203ce

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMinValue:Ljava/lang/String;

    const v7, 0x7f1203cb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMaxValue:Ljava/lang/String;

    :cond_0
    sget-object v6, Lcom/motorola/camera/CameraApp;->sInstance:Lcom/motorola/camera/CameraApp;

    invoke-virtual {v6}, Lcom/motorola/camera/CameraApp;->isRtlLayout()Z

    move-result v6

    iput-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    const v7, 0x7f060036

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    iput-object v0, v1, Landroid/text/TextPaint;->drawableState:[I

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/camera/utility/DisplayMetricsHelper;->getDisplayMetrics(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->scaledDensity:F

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v0, v8

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/motorola/camera/R$styleable;->ProModeSliderBar:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, -0x1

    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {v2, v8, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f08022b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v2, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f08033f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5, v8, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f080343

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f080342

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v5, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f080344

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const v0, 0x7f080341

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {v5, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v4, v8, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMinValue:Ljava/lang/String;

    invoke-virtual {v4, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMaxValue:Ljava/lang/String;

    invoke-virtual {v4, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v3, v8, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v6, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->updateExpMark()V

    return-void
.end method


# virtual methods
.method public final drawMarks(Landroid/graphics/Canvas;)V
    .locals 7

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->MANUAL_FOCUS:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMfBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawMixedUnequalMark(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    :cond_1
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->WHITE_BALANCE:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mWhiteBalanceBitmaps:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawMixedUnequalMark(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    :cond_2
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->EXPOSURE_TIME:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mShutterStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawUnequalMark(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    :cond_3
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->ISO:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mISOStrings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawUnequalMark(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V

    :cond_4
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-float/2addr v0, v2

    :cond_5
    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {p0, p1, v5, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    if-eqz v1, :cond_6

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    sub-float/2addr v0, v5

    goto :goto_1

    :cond_6
    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-int/lit8 v6, v3, -0x1

    int-to-float v6, v6

    div-float/2addr v5, v6

    add-float/2addr v5, v0

    move v0, v5

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method

.method public final drawMixedUnequalMark(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 10

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-float/2addr v0, v2

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    if-nez v3, :cond_1

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x41400000    # 12.0f

    iget-object v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v5

    iget v7, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    invoke-static {v6, v7}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    float-to-int v7, v0

    div-int/lit8 v5, v5, 0x2

    sub-int v8, v7, v5

    sub-int v9, v6, v5

    add-int/2addr v7, v5

    add-int/2addr v5, v6

    invoke-virtual {v4, v8, v9, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    const-string v7, "getBounds(...)"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget v7, v5, Landroid/graphics/Rect;->right:I

    iget v8, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    iget v8, v5, Landroid/graphics/Rect;->bottom:I

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v5

    if-eqz v7, :cond_3

    if-nez v8, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    int-to-float v5, v5

    neg-float v5, v5

    int-to-float v6, v6

    invoke-virtual {p1, v5, v0, v6}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_1
    if-eqz v1, :cond_5

    if-nez v3, :cond_4

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_2

    :cond_4
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v4, v5

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_2
    sub-float/2addr v0, v4

    goto :goto_4

    :cond_5
    if-nez v3, :cond_6

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_3

    :cond_6
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v4, v5

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_3
    add-float/2addr v0, v4

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V
    .locals 8

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTextPaint:Landroid/text/TextPaint;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, p2, v2, v0, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    if-eqz v0, :cond_5

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    if-eq v0, v2, :cond_4

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationEndTime:J

    cmp-long v0, v4, v6

    if-gez v0, :cond_3

    iget-wide v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationStartTime:J

    sub-long/2addr v4, v6

    long-to-int v0, v4

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartDegree:I

    iget-boolean v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mClockwise:Z

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    neg-int v0, v0

    :goto_0
    mul-int/lit16 v0, v0, 0x10e

    div-int/lit16 v0, v0, 0x3e8

    add-int/2addr v0, v2

    if-ltz v0, :cond_2

    rem-int/lit16 v0, v0, 0x168

    goto :goto_1

    :cond_2
    rem-int/lit16 v0, v0, 0x168

    add-int/lit16 v0, v0, 0x168

    :goto_1
    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    iput v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    :cond_4
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    int-to-float v0, v0

    neg-float v0, v0

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->marginTop:F

    invoke-static {v2, p0}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1, v0, p3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    sub-float/2addr p3, v0

    invoke-static {v2, p0}, Lcom/motorola/camera/Util;->dp2px(Landroid/content/Context;F)I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v4

    add-float/2addr v0, p0

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_3
    return-void
.end method

.method public final drawTrack(Landroid/graphics/Canvas;)V
    .locals 13

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    sget-object v1, Lcom/motorola/camera/settings/SettingsManager;->AE_COMPENSATION:Lcom/motorola/camera/settings/SettingsManager$Key;

    iget-object v1, v1, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    iget-object v0, v0, Lcom/motorola/camera/settings/SettingsManager$Key;->mName:Ljava/lang/String;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const v0, 0x7f080340

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iget v3, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    const/4 v5, 0x2

    div-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v6, v5

    const/high16 v7, 0x40b00000    # 5.5f

    div-float/2addr v7, v6

    sub-float/2addr v4, v7

    float-to-int v4, v4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    iget v8, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingRight:I

    sub-int/2addr v6, v8

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    div-int/2addr v8, v5

    int-to-float v8, v8

    add-float/2addr v8, v7

    float-to-int v8, v8

    invoke-virtual {v0, v3, v4, v6, v8}, Landroid/graphics/Rect;->set(IIII)V

    const v3, 0x7f0604a4

    invoke-virtual {v1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    const v4, 0x7f060405

    iget-boolean v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    const/16 v8, 0x32

    if-le v3, v8, :cond_3

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    iget v9, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v10

    sub-int/2addr v10, v8

    int-to-float v10, v10

    mul-float/2addr v9, v10

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    sub-float/2addr v3, v9

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    sub-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/2addr v10, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/2addr v11, v5

    int-to-float v11, v11

    add-float/2addr v11, v7

    float-to-int v11, v11

    invoke-virtual {v0, v3, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    sub-float/2addr v9, v7

    float-to-int v9, v9

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/2addr v10, v5

    int-to-float v10, v10

    iget v11, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v12

    sub-int/2addr v12, v8

    int-to-float v12, v12

    mul-float/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v12

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v10

    float-to-int v10, v11

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v11

    div-int/2addr v11, v5

    int-to-float v11, v11

    add-float/2addr v11, v7

    float-to-int v11, v11

    invoke-virtual {v0, v3, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v3

    if-ge v3, v8, :cond_6

    if-eqz v6, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v9

    div-int/2addr v9, v5

    int-to-float v9, v9

    iget v10, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v11

    sub-int/2addr v8, v11

    int-to-float v8, v8

    mul-float/2addr v10, v8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v10, v8

    add-float/2addr v10, v9

    float-to-int v8, v10

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v5

    int-to-float p0, p0

    add-float/2addr p0, v7

    float-to-int p0, p0

    invoke-virtual {v0, v3, v6, v8, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v5

    int-to-float v3, v3

    iget v6, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v9

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float/2addr v6, v8

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v6, v8

    sub-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/2addr v6, v5

    int-to-float v6, v6

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v5

    int-to-float p0, p0

    add-float/2addr p0, v7

    float-to-int p0, p0

    invoke-virtual {v0, v3, v6, v8, p0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_1
    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-virtual {v2, p0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void

    :cond_5
    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public final drawUnequalMark(Landroid/graphics/Canvas;Ljava/util/ArrayList;)V
    .locals 6

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    int-to-float v0, v0

    iget-boolean v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mIsRtl:Z

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    add-float/2addr v0, v2

    :cond_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, p1, v4, v0}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawRotateText(Landroid/graphics/Canvas;Ljava/lang/String;F)V

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v4, v5

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_1
    sub-float/2addr v0, v4

    goto :goto_3

    :cond_2
    if-nez v3, :cond_3

    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    iget v5, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    sub-float/2addr v4, v5

    add-int/lit8 v5, v2, -0x2

    int-to-float v5, v5

    div-float/2addr v4, v5

    :goto_2
    add-float/2addr v0, v4

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/AbsSeekBar;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v1

    iget-object v1, v1, Lcom/motorola/camera/settings/Setting;->mValue:Ljava/lang/Object;

    iget-object v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-static {v2}, Lcom/motorola/camera/settings/SettingsManager;->get(Lcom/motorola/camera/settings/SettingsManager$Key;)Lcom/motorola/camera/settings/Setting;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/camera/settings/Setting;->mDefaultValue:Ljava/lang/Object;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f0604a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_0

    :cond_1
    const v1, 0x7f060405

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/AbsSeekBar;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawTrack(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatSeekBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->drawMarks(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized onMeasure(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMeasuredWidth:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingRight:I

    iget p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mMeasuredWidth:I

    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mPaddingLeft:I

    sub-int/2addr p2, v0

    int-to-float p2, p2

    int-to-float p1, p1

    sub-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mSeekLength:F

    const/16 p1, 0x11

    int-to-float p1, p1

    mul-float/2addr p2, p1

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartGap:F

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mProgressDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final setCurrentKey(Lcom/motorola/camera/settings/SettingsManager$Key;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/motorola/camera/settings/SettingsManager$Key;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentKey:Lcom/motorola/camera/settings/SettingsManager$Key;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final setOrientation(I)V
    .locals 4

    if-ltz p1, :cond_0

    rem-int/lit16 p1, p1, 0x168

    goto :goto_0

    :cond_0
    rem-int/lit16 p1, p1, 0x168

    add-int/lit16 p1, p1, 0x168

    :goto_0
    iget v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    iput p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mStartDegree:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationStartTime:J

    iget p1, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mTargetDegree:I

    iget v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mCurrentDegree:I

    sub-int/2addr p1, v2

    if-ltz p1, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit16 p1, p1, 0x168

    :goto_1
    const/16 v2, 0xb4

    if-le p1, v2, :cond_3

    add-int/lit16 p1, p1, -0x168

    :cond_3
    if-ltz p1, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    iput-boolean v2, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mClockwise:Z

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    div-int/lit16 p1, p1, 0x10e

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mAnimationEndTime:J

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateExpMark()V
    .locals 6

    iget-object p0, p0, Lcom/motorola/camera/ui/controls_2020/probar/ProModeSliderBar;->mExpStrings:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v1}, Lcom/motorola/camera/settings/SettingsManager;->getCameraCharacteristic(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Rational;

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v2

    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    sub-int/2addr v0, v2

    if-ltz v0, :cond_2

    const/4 v1, 0x0

    :goto_0
    div-int/lit8 v3, v0, 0x2

    const-string v4, "%+d"

    const/4 v5, 0x1

    if-le v1, v3, :cond_0

    add-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_0
    if-ne v1, v3, :cond_1

    add-int v3, v2, v1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    const-string v4, "%1.1f"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    add-int v3, v2, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_1
    if-eq v1, v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
