.class public final Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnDragListener;
.implements Landroidx/compose/ui/draganddrop/DragAndDropManager;


# instance fields
.field public final interestedTargets:Landroidx/collection/ArraySet;

.field public final modifier:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

.field public final rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-direct {v0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;->size:J

    iput-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    new-instance v0, Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    new-instance v0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    invoke-direct {v0, p0}, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;-><init>(Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;)V

    iput-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->modifier:Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager$modifier$1;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    new-instance p1, Lcom/google/android/gms/tasks/zzs;

    const/16 v0, 0xa

    invoke-direct {p1, v0, p2}, Lcom/google/android/gms/tasks/zzs;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result p2

    iget-object v0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->interestedTargets:Landroidx/collection/ArraySet;

    const/4 v1, 0x0

    iget-object p0, p0, Landroidx/compose/ui/draganddrop/AndroidDragAndDropManager;->rootDragAndDropNode:Landroidx/compose/ui/draganddrop/DragAndDropNode;

    packed-switch p2, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onExited(Lcom/google/android/gms/tasks/zzs;)V

    return v1

    :pswitch_1
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onEntered(Lcom/google/android/gms/tasks/zzs;)V

    return v1

    :pswitch_2
    new-instance p2, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v2, 0x16

    invoke-direct {p2, v2, p1}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v2, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p2}, Landroidx/compose/ui/node/HitTestResultKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    :goto_0
    invoke-virtual {v0}, Landroidx/collection/ArraySet;->clear()V

    return v1

    :pswitch_3
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onDrop(Lcom/google/android/gms/tasks/zzs;)Z

    move-result p0

    return p0

    :pswitch_4
    invoke-virtual {p0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onMoved(Lcom/google/android/gms/tasks/zzs;)V

    return v1

    :pswitch_5
    new-instance p2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroidx/compose/ui/draganddrop/DragAndDropNode$acceptDragAndDropTransfer$1;

    invoke-direct {v1, p1, p0, p2}, Landroidx/compose/ui/draganddrop/DragAndDropNode$acceptDragAndDropTransfer$1;-><init>(Lcom/google/android/gms/tasks/zzs;Landroidx/compose/ui/draganddrop/DragAndDropNode;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    invoke-virtual {v1, p0}, Landroidx/compose/ui/draganddrop/DragAndDropNode$acceptDragAndDropTransfer$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;->ContinueTraversal:Landroidx/compose/ui/node/TraversableNode$Companion$TraverseDescendantsAction;

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {p0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->traverseDescendants(Landroidx/compose/ui/node/TraversableNode;Lkotlin/jvm/functions/Function1;)V

    :goto_1
    iget-boolean p0, p2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Landroidx/collection/ArrayMap$KeyIterator;

    invoke-direct {p2, v0}, Landroidx/collection/ArrayMap$KeyIterator;-><init>(Landroidx/collection/ArraySet;)V

    :goto_2
    invoke-virtual {p2}, Landroidx/collection/ArrayMap$KeyIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroidx/collection/ArrayMap$KeyIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/draganddrop/DragAndDropNode;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/draganddrop/DragAndDropNode;->onStarted(Lcom/google/android/gms/tasks/zzs;)V

    goto :goto_2

    :cond_2
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
