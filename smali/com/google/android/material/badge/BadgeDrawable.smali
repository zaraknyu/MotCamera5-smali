.class public final Lcom/google/android/material/badge/BadgeDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;


# instance fields
.field public anchorViewRef:Ljava/lang/ref/WeakReference;

.field public final badgeBounds:Landroid/graphics/Rect;

.field public badgeCenterX:F

.field public badgeCenterY:F

.field public final contextRef:Ljava/lang/ref/WeakReference;

.field public cornerRadius:F

.field public customBadgeParentRef:Ljava/lang/ref/WeakReference;

.field public halfBadgeHeight:F

.field public halfBadgeWidth:F

.field public final maxBadgeNumber:I

.field public final shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final state:Lcom/google/android/material/badge/BadgeState;

.field public final textDrawableHelper:Lcom/motorola/camera/ui/GestureRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    sget-object v1, Lcom/google/android/material/internal/ViewUtils;->MATERIAL_CHECK_ATTRS:[I

    const-string v2, "Theme.MaterialComponents"

    invoke-static {p1, v1, v2}, Lcom/google/android/material/internal/ViewUtils;->checkTheme(Landroid/content/Context;[ILjava/lang/String;)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    new-instance v1, Lcom/motorola/camera/ui/GestureRecognizer;

    invoke-direct {v1, p0}, Lcom/motorola/camera/ui/GestureRecognizer;-><init>(Lcom/google/android/material/internal/TextDrawableHelper$TextDrawableDelegate;)V

    iput-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object v2, v1, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v2, Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v3, Lcom/google/android/material/badge/BadgeState;

    invoke-direct {v3, p1}, Lcom/google/android/material/badge/BadgeState;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    new-instance v4, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v5

    iget-object v3, v3, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    if-eqz v5, :cond_0

    iget-object v5, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_0

    :cond_0
    iget-object v5, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_1

    :cond_1
    iget-object v6, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :goto_1
    new-instance v7, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v8, 0x0

    int-to-float v9, v8

    invoke-direct {v7, v9}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {p1, v5, v6, v7}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/AbsoluteCornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object p1

    invoke-direct {v4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    iput-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/google/android/material/resources/TextAppearance;

    iget-object v5, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {v0, p1, v5}, Lcom/google/android/material/resources/TextAppearance;-><init>(Landroid/content/Context;I)V

    iget-object v5, v1, Lcom/motorola/camera/ui/GestureRecognizer;->mPinchDetector:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/material/resources/TextAppearance;

    if-ne v5, v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v1, v0, p1}, Lcom/motorola/camera/ui/GestureRecognizer;->setTextAppearance(Lcom/google/android/material/resources/TextAppearance;Landroid/content/Context;)V

    iget-object p1, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :goto_2
    iget p1, v3, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    const/4 v0, -0x2

    const/4 v5, 0x1

    if-eq p1, v0, :cond_4

    int-to-double v6, p1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v9

    const-wide/high16 v9, 0x4024000000000000L    # 10.0

    invoke-static {v9, v10, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    double-to-int p1, v6

    sub-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    goto :goto_3

    :cond_4
    iget p1, v3, Lcom/google/android/material/badge/BadgeState$State;->maxNumber:I

    iput p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    :goto_3
    iput-boolean v5, v1, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iput-boolean v5, v1, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeShapeAppearanceUpdated()V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    iget-object p1, v3, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, v4, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->fillColor:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_5

    invoke-virtual {v4, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_5
    iget-object p1, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->onBadgeGravityUpdated()V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    iget-object p1, v3, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1, v8}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object v3, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v3, Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v0, v4, v5, v1}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-virtual {v1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    sub-float/2addr v3, v4

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-gtz v1, :cond_1

    float-to-int v1, v3

    :goto_0
    int-to-float v1, v1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    goto :goto_0

    :goto_1
    iget-object v2, v2, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast v2, Landroid/text/TextPaint;

    invoke-virtual {p1, v0, p0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_2
    :goto_2
    return-void
.end method

.method public final getAlpha()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    return p0
.end method

.method public final getBadgeContent()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    const/4 v4, -0x2

    if-eqz v2, :cond_3

    iget p0, v1, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    if-ne p0, v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, p0, :cond_2

    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-virtual {v2, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const v1, 0x7f12022d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2026"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v2

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-eq v1, v4, :cond_6

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result v1

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    if-gt v1, v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    if-nez v1, :cond_5

    :goto_1
    const-string p0, ""

    return-object p0

    :cond_5
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    const v2, 0x7f1202fd

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->maxBadgeNumber:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "+"

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_2
    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    invoke-static {v0}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getNumber()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getCustomBadgeParent()Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    return p0
.end method

.method public final getNumber()I
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public final hasBadgeContent()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasNumber()Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hasNumber()Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeState$State;->text:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/google/android/material/badge/BadgeState$State;->number:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isStateful()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onBadgeGravityUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/google/android/material/badge/BadgeDrawable;->updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_1
    return-void
.end method

.method public final onBadgeShapeAppearanceUpdated()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v1, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    iget-object v1, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v1, v1, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceResId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeWithTextShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_2
    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v2, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeShapeAppearanceOverlayResId:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_1
    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    const/4 v4, 0x0

    int-to-float v4, v4

    invoke-direct {v3, v4}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/material/shape/ShapeAppearanceModel;->builder(Landroid/content/Context;IILcom/google/android/material/shape/AbsoluteCornerSize;)Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-virtual {v1, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final onStateChange([I)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result p0

    return p0
.end method

.method public final onTextSizeChange()V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setAlpha(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    iput p1, v1, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    iget-object v0, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iput p1, v0, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    iget-object p1, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/motorola/camera/ui/GestureRecognizer;

    iget-object p1, p1, Lcom/motorola/camera/ui/GestureRecognizer;->mListener:Ljava/lang/Object;

    check-cast p1, Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getAlpha()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public final updateBadgeCoordinates(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->updateCenterAndBounds()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final updateCenterAndBounds()V
    .locals 15

    iget-object v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->contextRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->anchorViewRef:Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    if-eqz v1, :cond_1f

    if-nez v2, :cond_1

    goto/16 :goto_14

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2, v5}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    iget-object v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->customBadgeParentRef:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    :cond_2
    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2, v5}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    iget-object v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->state:Lcom/google/android/material/badge/BadgeState;

    if-eqz v3, :cond_4

    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    goto :goto_2

    :cond_4
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    :goto_2
    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    const/high16 v7, -0x40800000    # -1.0f

    cmpl-float v8, v3, v7

    const/high16 v9, 0x40000000    # 2.0f

    if-eqz v8, :cond_5

    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    goto :goto_7

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    if-eqz v3, :cond_6

    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWithTextWidth:F

    :goto_3
    div-float/2addr v3, v9

    goto :goto_4

    :cond_6
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWidth:F

    goto :goto_3

    :goto_4
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    if-eqz v3, :cond_7

    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeWithTextHeight:F

    :goto_5
    div-float/2addr v3, v9

    goto :goto_6

    :cond_7
    iget v3, v6, Lcom/google/android/material/badge/BadgeState;->badgeHeight:F

    goto :goto_5

    :goto_6
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getBadgeContent()Ljava/lang/String;

    move-result-object v3

    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget-object v10, p0, Lcom/google/android/material/badge/BadgeDrawable;->textDrawableHelper:Lcom/motorola/camera/ui/GestureRecognizer;

    iget-boolean v11, v10, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    if-nez v11, :cond_8

    iget v11, v10, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    goto :goto_8

    :cond_8
    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/GestureRecognizer;->refreshTextDimens(Ljava/lang/String;)V

    iget v11, v10, Lcom/motorola/camera/ui/GestureRecognizer;->mScaleFactor:F

    :goto_8
    div-float/2addr v11, v9

    iget-object v12, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v12, v12, Lcom/google/android/material/badge/BadgeState$State;->badgeHorizontalPadding:Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v11, v12

    invoke-static {v8, v11}, Ljava/lang/Math;->max(FF)F

    move-result v8

    iput v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    iget-boolean v11, v10, Lcom/motorola/camera/ui/GestureRecognizer;->firstCancel:Z

    if-nez v11, :cond_9

    iget v3, v10, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    goto :goto_9

    :cond_9
    invoke-virtual {v10, v3}, Lcom/motorola/camera/ui/GestureRecognizer;->refreshTextDimens(Ljava/lang/String;)V

    iget v3, v10, Lcom/motorola/camera/ui/GestureRecognizer;->mTransFactor:F

    :goto_9
    div-float/2addr v3, v9

    iget-object v9, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v9, v9, Lcom/google/android/material/badge/BadgeState$State;->badgeVerticalPadding:Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v3, v9

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    invoke-static {v8, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    :cond_a
    iget-object v3, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget-object v8, v6, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    iget v9, v6, Lcom/google/android/material/badge/BadgeState;->offsetAlignmentMode:I

    iget-object v10, v3, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v11

    const/4 v12, 0x0

    if-eqz v11, :cond_b

    iget-object v10, v3, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v11, 0x3f800000    # 1.0f

    sub-float/2addr v0, v11

    const v13, 0x3e99999a    # 0.3f

    invoke-static {v12, v11, v13, v11, v0}, Lcom/google/android/material/animation/AnimationUtils;->lerp(FFFFF)F

    move-result v0

    iget-object v11, v3, Lcom/google/android/material/badge/BadgeState$State;->largeFontVerticalOffsetAdjustment:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    sub-int v11, v10, v11

    invoke-static {v10, v0, v11}, Lcom/google/android/material/animation/AnimationUtils;->lerp(IFI)I

    move-result v10

    :cond_b
    if-nez v9, :cond_c

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    sub-int/2addr v10, v0

    :cond_c
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v10

    iget-object v10, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const v11, 0x800053

    if-eq v10, v11, :cond_d

    const v13, 0x800055

    if-eq v10, v13, :cond_d

    iget v10, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v10, v0

    int-to-float v0, v10

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    goto :goto_a

    :cond_d
    iget v10, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v0

    int-to-float v0, v10

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b

    :cond_e
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_b
    const/4 v10, 0x1

    if-ne v9, v10, :cond_10

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->hasBadgeContent()Z

    move-result v9

    if-eqz v9, :cond_f

    iget v6, v6, Lcom/google/android/material/badge/BadgeState;->horizontalInsetWithText:I

    goto :goto_c

    :cond_f
    iget v6, v6, Lcom/google/android/material/badge/BadgeState;->horizontalInset:I

    :goto_c
    add-int/2addr v0, v6

    :cond_10
    iget-object v6, v3, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/2addr v6, v0

    iget-object v0, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v8, 0x800033

    if-eq v0, v8, :cond_12

    if-eq v0, v11, :cond_12

    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_11

    iget v0, v5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr v0, v5

    int-to-float v5, v6

    sub-float/2addr v0, v5

    goto :goto_d

    :cond_11
    iget v0, v5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr v0, v5

    int-to-float v5, v6

    add-float/2addr v0, v5

    :goto_d
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    goto :goto_f

    :cond_12
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-nez v0, :cond_13

    iget v0, v5, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr v0, v5

    int-to-float v5, v6

    add-float/2addr v0, v5

    goto :goto_e

    :cond_13
    iget v0, v5, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr v0, v5

    int-to-float v5, v6

    sub-float/2addr v0, v5

    :goto_e
    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :goto_f
    iget-object v0, v3, Lcom/google/android/material/badge/BadgeState$State;->autoAdjustToWithinGrandparentBounds:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_15

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-nez v0, :cond_14

    goto/16 :goto_13

    :cond_14
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    move-result v0

    invoke-virtual {v2}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    move-object v14, v2

    move v2, v0

    move-object v0, v14

    goto :goto_10

    :cond_15
    invoke-virtual {p0}, Lcom/google/android/material/badge/BadgeDrawable;->getCustomBadgeParent()Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0a02e3

    if-ne v2, v3, :cond_17

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-nez v2, :cond_16

    goto/16 :goto_13

    :cond_16
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_10

    :cond_17
    move v2, v12

    move v3, v2

    :goto_10
    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v6, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    sub-float/2addr v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v6

    add-float/2addr v6, v5

    add-float/2addr v6, v2

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v8, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    sub-float/2addr v5, v8

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v8

    add-float/2addr v8, v5

    add-float/2addr v8, v3

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    instance-of v5, v5, Landroid/view/View;

    if-eqz v5, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    iget v9, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v10, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    add-float/2addr v9, v10

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v10

    sub-float/2addr v5, v10

    sub-float/2addr v9, v5

    add-float/2addr v9, v2

    goto :goto_11

    :cond_18
    move v9, v12

    :goto_11
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v10, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    add-float/2addr v5, v10

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    sub-float/2addr v2, v0

    sub-float/2addr v5, v2

    add-float/2addr v5, v3

    goto :goto_12

    :cond_19
    move v5, v12

    :goto_12
    cmpg-float v0, v6, v12

    if-gez v0, :cond_1a

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :cond_1a
    cmpg-float v0, v8, v12

    if-gez v0, :cond_1b

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v0

    iput v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :cond_1b
    cmpl-float v0, v9, v12

    if-lez v0, :cond_1c

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    :cond_1c
    cmpl-float v0, v5, v12

    if-lez v0, :cond_1d

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    :cond_1d
    :goto_13
    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterX:F

    iget v2, p0, Lcom/google/android/material/badge/BadgeDrawable;->badgeCenterY:F

    iget v3, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeWidth:F

    iget v5, p0, Lcom/google/android/material/badge/BadgeDrawable;->halfBadgeHeight:F

    sub-float v6, v0, v3

    float-to-int v6, v6

    sub-float v8, v2, v5

    float-to-int v8, v8

    add-float/2addr v0, v3

    float-to-int v0, v0

    add-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v4, v6, v8, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget v0, p0, Lcom/google/android/material/badge/BadgeDrawable;->cornerRadius:F

    cmpl-float v2, v0, v7

    iget-object p0, p0, Lcom/google/android/material/badge/BadgeDrawable;->shapeDrawable:Lcom/google/android/material/shape/MaterialShapeDrawable;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Lcom/google/android/material/shape/MaterialShapeDrawable;->drawableState:Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;

    iget-object v2, v2, Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;->shapeAppearanceModel:Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel;->toBuilder()Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v3, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v3, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->topRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v3, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomRightCornerSize:Lcom/google/android/material/shape/CornerSize;

    new-instance v3, Lcom/google/android/material/shape/AbsoluteCornerSize;

    invoke-direct {v3, v0}, Lcom/google/android/material/shape/AbsoluteCornerSize;-><init>(F)V

    iput-object v3, v2, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->bottomLeftCornerSize:Lcom/google/android/material/shape/CornerSize;

    invoke-virtual {v2}, Lcom/google/android/material/shape/ShapeAppearanceModel$Builder;->build()Lcom/google/android/material/shape/ShapeAppearanceModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setShapeAppearanceModel(Lcom/google/android/material/shape/ShapeAppearanceModel;)V

    :cond_1e
    invoke-virtual {v1, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    invoke-virtual {p0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_1f
    :goto_14
    return-void
.end method
