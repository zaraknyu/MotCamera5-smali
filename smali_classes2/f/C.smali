.class public final Lf/C;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# instance fields
.field public final a:Lf/x;

.field public final b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final c:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final d:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final e:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final f:Lf/v;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    new-instance v0, Lf/x;

    .line 2
    new-instance v1, Lf/D;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3, v2}, Lf/D;-><init>(III)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    .line 3
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v2}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v2

    .line 4
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v3}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v3

    .line 5
    new-instance v4, Lf/a;

    invoke-direct {v4}, Lf/a;-><init>()V

    .line 6
    invoke-direct {v0, v1, v2, v3, v4}, Lf/x;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lf/a;)V

    .line 7
    invoke-direct {p0, v0}, Lf/C;-><init>(Lf/x;)V

    return-void
.end method

.method public constructor <init>(Lf/x;)V
    .locals 20

    move-object/from16 v2, p0

    move-object/from16 v0, p1

    .line 8
    invoke-direct {v2}, Landroidx/lifecycle/ViewModel;-><init>()V

    iput-object v0, v2, Lf/C;->a:Lf/x;

    .line 9
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v1

    iput-object v1, v2, Lf/C;->b:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    .line 10
    new-instance v1, Lf/C$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lf/C$$ExternalSyntheticLambda0;-><init>(Lf/C;I)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v9

    iput-object v9, v2, Lf/C;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 11
    new-instance v1, Lf/C$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lf/C$$ExternalSyntheticLambda0;-><init>(Lf/C;I)V

    invoke-static {v1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object v10

    iput-object v10, v2, Lf/C;->d:Landroidx/compose/runtime/DerivedSnapshotState;

    .line 12
    sget-object v1, Lf/d;->a:Lf/d;

    invoke-static {v1}, Lkotlinx/coroutines/flow/FlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object v11

    iput-object v11, v2, Lf/C;->e:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 13
    new-instance v12, Lf/v;

    .line 14
    iget-object v13, v0, Lf/x;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-object v14, v9

    .line 15
    iget-object v9, v0, Lf/x;->c:Landroidx/compose/runtime/State;

    .line 16
    iget-object v15, v0, Lf/x;->d:Lf/a;

    move-object/from16 v16, v12

    .line 17
    new-instance v12, Lf/b;

    .line 18
    new-instance v0, Lf/B;

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x1

    .line 19
    const-class v3, Lf/C;

    const-string v4, "animateScrollToPage"

    const-string v5, "animateScrollToPage(I)V"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lf/B;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 20
    new-instance v1, Lf/A;

    move-object v2, v0

    move-object v0, v1

    const/4 v1, 0x0

    .line 21
    const-class v3, Lf/C;

    const-string v4, "scrollToPreviousPage"

    const-string v5, "scrollToPreviousPage()V"

    move-object/from16 v17, v9

    move-object v9, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lf/A;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 22
    new-instance v1, Lf/A;

    const/4 v8, 0x0

    move-object v2, v0

    move-object v0, v1

    const/4 v1, 0x0

    .line 23
    const-class v3, Lf/C;

    const-string v4, "scrollToNextPage"

    const-string v5, "scrollToNextPage()V"

    move-object/from16 v18, v10

    move-object v10, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lf/A;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 24
    new-instance v1, Lf/B;

    move-object v2, v0

    move-object v0, v1

    const/4 v1, 0x1

    .line 25
    const-class v3, Lf/C;

    const-string v4, "setFilter"

    const-string v5, "setFilter(Ljava/util/List;)V"

    move-object/from16 v19, v11

    move-object v11, v2

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v8}, Lf/B;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    .line 26
    invoke-direct {v12, v9, v10, v11, v0}, Lf/b;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)V

    .line 27
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object v8

    move-object v5, v13

    move-object v6, v14

    move-object v11, v15

    move-object/from16 v4, v16

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    move-object/from16 v10, v19

    .line 28
    invoke-direct/range {v4 .. v12}, Lf/v;-><init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/State;Lkotlinx/coroutines/flow/StateFlowImpl;Lf/a;Lf/b;)V

    .line 29
    iput-object v4, v2, Lf/C;->f:Lf/v;

    return-void
.end method
