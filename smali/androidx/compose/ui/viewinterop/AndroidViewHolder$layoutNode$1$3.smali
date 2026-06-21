.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field public final synthetic $r8$classId:I

.field public final synthetic $this_run:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;I)V
    .locals 0

    iput p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$this_run:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iput-object p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$this_run:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    invoke-static {p0, v0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$layoutAccordingTo(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;)V

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->owner:Landroidx/compose/ui/node/Owner;

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/ui/platform/AndroidComposeView;->isPendingInteropViewLayoutChangeDispatch:Z

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->position:[I

    const/4 v2, 0x0

    aget v3, v0, v2

    aget v4, v0, v1

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-wide v5, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->size:J

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v7

    iput-wide v7, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->size:J

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insets:Landroidx/core/view/WindowInsetsCompat;

    if-eqz p1, :cond_1

    aget v2, v0, v2

    if-ne v3, v2, :cond_0

    aget v0, v0, v1

    if-ne v4, v0, :cond_0

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    :cond_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    check-cast p1, Landroidx/compose/ui/layout/Placeable$PlacementScope;

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$this_run:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p1, p0}, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->access$layoutAccordingTo(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    check-cast p1, Landroidx/compose/ui/node/Owner;

    instance-of v0, p1, Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v0, :cond_2

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$this_run:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getHolderToLayoutNode()Ljava/util/HashMap;

    move-result-object v1

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;->$layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-interface {v1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Landroidx/compose/ui/platform/AndroidComposeView;->getAndroidViewsHandler$ui_release()Landroidx/compose/ui/platform/AndroidViewsHandler;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidViewsHandler;->getLayoutNodeToHolder()Ljava/util/HashMap;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setImportantForAccessibility(I)V

    new-instance v1, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;

    invoke-direct {v1, p1, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView$addAndroidView$1;-><init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/platform/AndroidComposeView;)V

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    if-eq p0, v0, :cond_4

    invoke-virtual {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
