.class public final Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->typedView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->getUpdateBlock()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->typedView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->getResetBlock()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->typedView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->getReleaseBlock()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-interface {v1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->access$unregisterSaveStateProvider(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;->typedView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->this$0:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-boolean v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->hasUpdateBlock:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->access$getSnapshotObserver(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;->INSTANCE$1:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getUpdate()Lkotlin/jvm/functions/Function0;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
