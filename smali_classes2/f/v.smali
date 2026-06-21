.class public final Lf/v;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final b:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final c:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final e:Landroidx/compose/runtime/State;

.field public final f:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final g:Lf/a;

.field public final h:Lf/b;

.field public final i:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final j:Landroidx/compose/runtime/DerivedSnapshotState;

.field public final k:Landroidx/compose/runtime/DerivedSnapshotState;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/DerivedSnapshotState;Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/State;Lkotlinx/coroutines/flow/StateFlowImpl;Lf/a;Lf/b;)V
    .locals 1

    const-string v0, "isInImageModeState"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object p2, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    iput-object p3, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    iput-object p4, p0, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object p5, p0, Lf/v;->e:Landroidx/compose/runtime/State;

    iput-object p6, p0, Lf/v;->f:Lkotlinx/coroutines/flow/StateFlowImpl;

    iput-object p7, p0, Lf/v;->g:Lf/a;

    iput-object p8, p0, Lf/v;->h:Lf/b;

    new-instance p1, Lf/q$$ExternalSyntheticLambda1;

    const/4 p2, 0x2

    invoke-direct {p1, p0, p2}, Lf/q$$ExternalSyntheticLambda1;-><init>(Lf/v;I)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Lf/v;->i:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance p1, Lf/q$$ExternalSyntheticLambda1;

    const/4 p2, 0x3

    invoke-direct {p1, p0, p2}, Lf/q$$ExternalSyntheticLambda1;-><init>(Lf/v;I)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Lf/v;->j:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance p1, Lf/q$$ExternalSyntheticLambda1;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Lf/q$$ExternalSyntheticLambda1;-><init>(Lf/v;I)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    move-result-object p1

    iput-object p1, p0, Lf/v;->k:Landroidx/compose/runtime/DerivedSnapshotState;

    new-instance p1, Lf/q$$ExternalSyntheticLambda1;

    const/4 p2, 0x5

    invoke-direct {p1, p0, p2}, Lf/q$$ExternalSyntheticLambda1;-><init>(Lf/v;I)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->derivedStateOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/DerivedSnapshotState;

    return-void
.end method


# virtual methods
.method public final a(Lf/D;)I
    .locals 5

    const-string v0, "documentPosition"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lf/v;->i:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lf/E;

    iget-object v4, p0, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-interface {v4}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v3, v3, Lf/E;->a:Lf/D;

    invoke-virtual {v3, p1}, Lf/D;->equals(Ljava/lang/Object;)Z

    move-result v3

    goto :goto_1

    :cond_0
    iget-object v3, v3, Lf/E;->a:Lf/D;

    iget v3, v3, Lf/D;->a:I

    iget v4, p1, Lf/D;->a:I

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lf/v;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lf/v;

    iget-object v0, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p1, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    iget-object v1, p1, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    iget-object v1, p1, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p1, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lf/v;->e:Landroidx/compose/runtime/State;

    iget-object v1, p1, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lf/v;->f:Lkotlinx/coroutines/flow/StateFlowImpl;

    iget-object v1, p1, Lf/v;->f:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lf/v;->g:Lf/a;

    iget-object v1, p1, Lf/v;->g:Lf/a;

    invoke-virtual {v0, v1}, Lf/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object p0, p0, Lf/v;->h:Lf/b;

    iget-object p1, p1, Lf/v;->h:Lf/b;

    invoke-virtual {p0, p1}, Lf/b;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_9
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/v;->f:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object v0, p0, Lf/v;->g:Lf/a;

    iget-object v0, v0, Lf/a;->a:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, Lf/v;->h:Lf/b;

    invoke-virtual {p0}, Lf/b;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DocumentPagerUiState(currentDocumentPositionState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pageItemsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", imageItemsState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userScrollableState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/v;->d:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInImageModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", eventFlow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/v;->f:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/v;->g:Lf/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pagerController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lf/v;->h:Lf/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
