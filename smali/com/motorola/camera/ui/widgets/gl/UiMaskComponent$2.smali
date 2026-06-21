.class public final Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public downX:I

.field public initLeft:I

.field public final this$0:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->$r8$classId:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Ljava/lang/Object;

    .line 3
    iget v0, p2, Landroid/graphics/Rect;->left:I

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->downX:I

    .line 4
    iget p2, p2, Landroid/graphics/Rect;->top:I

    iput p2, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->initLeft:I

    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    return-void
.end method

.method public constructor <init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->$r8$classId:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    iget v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->downX:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->initLeft:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    add-int/2addr v0, v4

    new-instance v3, Landroid/graphics/RectF;

    int-to-float v2, v2

    int-to-float v4, v4

    int-to-float v1, v1

    int-to-float v0, v0

    invoke-direct {v3, v2, v4, v1, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {v3, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 p2, 0x4

    invoke-virtual {v0, p2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    iget-object p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    iget-object v0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->this$0:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v2, 0x1

    if-eqz p2, :cond_6

    const/4 v3, 0x2

    if-eq p2, v2, :cond_3

    if-eq p2, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    neg-int p2, p2

    iget p0, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->downX:I

    sub-int/2addr v1, p0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p0

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {p1, p2, v1, v3, v4}, Landroid/view/View;->layout(IIII)V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    add-int/2addr p2, p0

    iget-object v1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    add-int/2addr v3, p0

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result p0

    invoke-virtual {p1, p2, v1, v3, p0}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v4, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->initLeft:I

    sub-int/2addr p2, v4

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const-wide/16 v6, 0x12c

    if-ge p2, v3, :cond_4

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mLastUri:Landroid/net/Uri;

    if-eqz p0, :cond_7

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p0

    int-to-float p0, p0

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p0, p1

    iget-object p1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result p2

    sub-int/2addr p1, p2

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    iget-object v1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    iget-object v3, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    div-float/2addr v1, p2

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mPostCapture:Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    invoke-virtual {p0, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mBg:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    new-instance p1, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;

    const/16 p2, 0x8

    invoke-direct {p1, v0, p2}, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$$ExternalSyntheticLambda0;-><init>(Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;I)V

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iget v3, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->initLeft:I

    sub-int/2addr p2, v3

    const/16 v8, 0x32

    if-ge p2, v8, :cond_5

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    sub-int/2addr v3, p2

    int-to-float p2, v3

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    const/4 v8, 0x6

    invoke-direct {v3, p1, v8}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    const/4 v8, 0x7

    invoke-direct {v3, p1, v8}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p1, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0x1450

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;

    const/16 v0, 0x18

    invoke-direct {p2, v0, p0}, Lcom/motorola/camera/ui/widgets/gl/CompositionGuide$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    add-int/2addr p2, v1

    int-to-float p2, p2

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;

    const/16 v4, 0x8

    invoke-direct {v3, p1, v4}, Lcom/google/android/material/internal/ViewUtils$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;I)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v3, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;

    const/4 v4, 0x4

    invoke-direct {v3, v4, p0, p1}, Lkotlinx/coroutines/android/HandlerContext$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    iget-object p0, v0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent;->mEditButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_1

    :cond_6
    iput v1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->downX:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iput p1, p0, Lcom/motorola/camera/ui/widgets/gl/UiMaskComponent$2;->initLeft:I

    iget-object p0, v0, Lcom/motorola/camera/ui/uicomponents/AbstractComponent;->mParentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_7
    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
