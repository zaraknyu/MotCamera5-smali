.class public final Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$produceState:Landroidx/compose/runtime/ProduceStateScopeImpl;

.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/ProduceStateScopeImpl;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScopeImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    iget p2, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScopeImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/runtime/SnapshotStateKt__SnapshotFlowKt$collectAsState$1$1$1;->$$this$produceState:Landroidx/compose/runtime/ProduceStateScopeImpl;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ProduceStateScopeImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
