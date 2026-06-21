.class public final Landroidx/compose/ui/window/DialogLayout;
.super Landroidx/compose/ui/platform/AbstractComposeView;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public final content$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public decorFitsSystemWindows:Z

.field public hasCalledSetLayout:Z

.field public shouldCreateCompositionOnAttachedToWindow:Z

.field public usePlatformDefaultWidth:Z

.field public final window:Landroid/view/Window;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Window;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/compose/ui/platform/AbstractComposeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p2, p0, Landroidx/compose/ui/window/DialogLayout;->window:Landroid/view/Window;

    sget-object p1, Landroidx/compose/ui/window/ComposableSingletons$AndroidDialog_androidKt;->lambda-1:Landroidx/compose/runtime/internal/ComposableLambdaImpl;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/window/DialogLayout;->content$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-static {p0, p0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    new-instance p1, Landroidx/compose/ui/window/DialogLayout$1;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Landroidx/compose/ui/window/DialogLayout$1;-><init>(Landroid/view/ViewGroup;I)V

    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/media3/decoder/Buffer;)V

    return-void
.end method


# virtual methods
.method public final Content(Landroidx/compose/runtime/ComposerImpl;)V
    .locals 2

    const v0, 0x6770d814

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout;->content$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function2;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, p1, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-void
.end method

.method public final getShouldCreateCompositionOnAttachedToWindow()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogLayout;->shouldCreateCompositionOnAttachedToWindow:Z

    return p0
.end method

.method public final internalOnLayout$ui_release(IIII)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    add-int/2addr v3, v1

    sub-int/2addr p3, p1

    sub-int/2addr p4, p2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    sub-int/2addr p3, p1

    sub-int/2addr p3, v2

    sub-int/2addr p4, p2

    sub-int/2addr p4, v3

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result p0

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p0

    add-int/2addr p1, p3

    add-int/2addr p2, p4

    invoke-virtual {v0, p3, p4, p1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final internalOnMeasure$ui_release(II)V
    .locals 12

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-super {p0, p1, p2}, Landroidx/compose/ui/platform/AbstractComposeView;->internalOnMeasure$ui_release(II)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    const/4 v5, -0x2

    iget-object v6, p0, Landroidx/compose/ui/window/DialogLayout;->window:Landroid/view/Window;

    const/high16 v7, -0x80000000

    if-ne v4, v7, :cond_1

    iget-boolean v8, p0, Landroidx/compose/ui/window/DialogLayout;->usePlatformDefaultWidth:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-nez v8, :cond_1

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne v8, v5, :cond_1

    add-int/lit8 v8, v3, 0x1

    goto :goto_0

    :cond_1
    move v8, v3

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v10

    add-int/2addr v10, v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v9

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v11

    add-int/2addr v11, v9

    sub-int v9, v2, v10

    if-gez v9, :cond_2

    move v9, v0

    :cond_2
    sub-int/2addr v8, v11

    if-gez v8, :cond_3

    goto :goto_1

    :cond_3
    move v0, v8

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-nez v8, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v9, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :goto_2
    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    invoke-static {v0, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :goto_3
    invoke-virtual {v1, p1, p2}, Landroid/view/View;->measure(II)V

    const/high16 p1, 0x40000000    # 2.0f

    if-eq v8, v7, :cond_6

    if-eq v8, p1, :cond_7

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int v2, p2, v10

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    add-int/2addr p2, v10

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_7
    :goto_4
    if-eq v4, v7, :cond_9

    if-eq v4, p1, :cond_8

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v11

    goto :goto_5

    :cond_8
    move p1, v3

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    add-int/2addr p1, v11

    invoke-static {v3, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    :goto_5
    invoke-virtual {p0, v2, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Landroidx/compose/ui/window/DialogLayout;->usePlatformDefaultWidth:Z

    if-nez p1, :cond_a

    iget-boolean p0, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-nez p0, :cond_a

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    add-int/2addr p0, v11

    if-le p0, v3, :cond_a

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    iget p0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    if-ne p0, v5, :cond_a

    const/4 p0, -0x1

    invoke-virtual {v6, p0, p0}, Landroid/view/Window;->setLayout(II)V

    :cond_a
    return-void
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    iget-boolean p1, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    :goto_0
    return-object p2

    :cond_1
    iget-object p1, p2, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method
