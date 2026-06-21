.class public final Landroidx/compose/runtime/changelist/Operation$UpdateValue;
.super Landroidx/compose/runtime/changelist/Operation;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

.field public static final INSTANCE$1:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

.field public static final INSTANCE$2:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

.field public static final INSTANCE$3:Landroidx/compose/runtime/changelist/Operation$UpdateValue;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$1:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$2:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    const/4 v1, 0x2

    const/4 v2, 0x3

    invoke-direct {v0, v3, v1, v2}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE$3:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    new-instance v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v1, v2}, Landroidx/compose/runtime/changelist/Operation$UpdateValue;-><init>(III)V

    sput-object v0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$UpdateValue;

    return-void
.end method

.method public synthetic constructor <init>(III)V
    .locals 1

    iput p3, p0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->$r8$classId:I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/compose/runtime/changelist/Operation;-><init>(IIIB)V

    return-void
.end method


# virtual methods
.method public final execute(Landroidx/collection/CircularArray;Landroidx/compose/runtime/Applier;Landroidx/compose/runtime/SlotWriter;Landroidx/compose/runtime/internal/RememberEventDispatcher;)V
    .locals 3

    iget p0, p0, Landroidx/compose/runtime/changelist/Operation$UpdateValue;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p0

    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_0

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v1, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v1, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-virtual {p3, p1, p0}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result v0

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v0

    iget-object v1, p3, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v2, v1, v0

    aput-object p2, v1, v0

    instance-of p2, v2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p2, :cond_2

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p2

    invoke-virtual {p3, p1, p0}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p0

    sub-int/2addr p2, p0

    check-cast v2, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object p0, v2, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p0

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p1

    invoke-virtual {p3, p0}, Landroidx/compose/runtime/SlotWriter;->slotsEndAllIndex$runtime_release(I)I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    move p1, p0

    :goto_0
    invoke-virtual {p4, v2, p2, p0, p1}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    goto :goto_1

    :cond_2
    instance-of p0, v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_3

    check-cast v2, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v2}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_3
    :goto_1
    return-void

    :pswitch_0
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p0

    invoke-interface {p2}, Landroidx/compose/runtime/Applier;->up()V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, p4}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/SlotWriter;->node(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Landroidx/compose/runtime/Applier;->insertBottomUp(ILjava/lang/Object;)V

    return-void

    :pswitch_1
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lkotlin/jvm/functions/Function0;

    invoke-interface {p4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p4

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v0}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    invoke-virtual {p3, p1, p4}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    invoke-interface {p2, p0, p4}, Landroidx/compose/runtime/Applier;->insertTopDown(ILjava/lang/Object;)V

    invoke-interface {p2, p4}, Landroidx/compose/runtime/Applier;->down(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getObject-31yXWZQ(I)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0}, Landroidx/collection/CircularArray;->getInt(I)I

    move-result p0

    instance-of p1, p2, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_4

    move-object p1, p2

    check-cast p1, Landroidx/compose/runtime/RememberObserverHolder;

    iget-object v0, p4, Landroidx/compose/runtime/internal/RememberEventDispatcher;->currentRememberingList:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_4
    iget p1, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p3, p1, p0}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p1

    invoke-virtual {p3, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p1

    iget-object v0, p3, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    aget-object v1, v0, p1

    aput-object p2, v0, p1

    instance-of p1, v1, Landroidx/compose/runtime/RememberObserverHolder;

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroidx/compose/runtime/SlotWriter;->getSlotsSize()I

    move-result p1

    iget p2, p3, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p3, p2, p0}, Landroidx/compose/runtime/SlotWriter;->slotIndexOfGroupSlotIndex(II)I

    move-result p0

    sub-int/2addr p1, p0

    check-cast v1, Landroidx/compose/runtime/RememberObserverHolder;

    const/4 p0, -0x1

    invoke-virtual {p4, v1, p1, p0, p0}, Landroidx/compose/runtime/internal/RememberEventDispatcher;->recordLeaving(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_5
    instance-of p0, v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    if-eqz p0, :cond_6

    check-cast v1, Landroidx/compose/runtime/RecomposeScopeImpl;

    invoke-virtual {v1}, Landroidx/compose/runtime/RecomposeScopeImpl;->release()V

    :cond_6
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
