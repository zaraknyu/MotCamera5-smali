.class public final Landroidx/compose/runtime/changelist/ComposerChangeListWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public changeList:Landroidx/compose/runtime/changelist/ChangeList;

.field public final composer:Landroidx/compose/runtime/ComposerImpl;

.field public implicitRootStart:Z

.field public moveCount:I

.field public moveFrom:I

.field public moveTo:I

.field public final pendingDownNodes:Ljava/util/ArrayList;

.field public pendingUps:I

.field public removeFrom:I

.field public startedGroup:Z

.field public final startedGroups:Landroidx/compose/runtime/IntStack;

.field public writersReaderDelta:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/runtime/changelist/ChangeList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    iput-object p2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->startedGroups:Landroidx/compose/runtime/IntStack;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->implicitRootStart:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    return-void
.end method


# virtual methods
.method public final moveUp()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    return-void
.end method

.method public final pushPendingUpsAndDowns()V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v2, v2, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v3, Landroidx/compose/runtime/changelist/Operation$Ups;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Ups;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v3, v2, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v4, v2, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v5, v2, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v2, v2, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v5, v2

    iget v2, v2, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v4, v2

    aput v0, v3, v4

    iput v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingUps:I

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pendingDownNodes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object p0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [Ljava/lang/Object;

    move v4, v1

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object p0, p0, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$Downs;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$Downs;

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    invoke-static {p0, v1, v3}, Lcom/google/android/gms/internal/mlkit_vision_barcode/zzgl;->setObject-DKhxnng(Landroidx/compose/runtime/changelist/Operations;ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void
.end method

.method public final realizeNodeMovementOperations()V
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    if-lez v0, :cond_1

    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    const/4 v2, -0x1

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v3, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v3, v3, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v4, Landroidx/compose/runtime/changelist/Operation$RemoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$RemoveNode;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget v4, v3, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v5, v3, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v6, v3, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v6, v6, -0x1

    aget-object v5, v5, v6

    iget v5, v5, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v4, v5

    iget-object v3, v3, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    aput v1, v3, v4

    add-int/lit8 v4, v4, 0x1

    aput v0, v3, v4

    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    goto :goto_0

    :cond_0
    iget v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    iget v3, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->pushPendingUpsAndDowns()V

    iget-object v4, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v4, v4, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v5, Landroidx/compose/runtime/changelist/Operation$MoveNode;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$MoveNode;

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget v5, v4, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v6, v4, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v7, v4, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    iget v6, v6, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v5, v6

    iget-object v4, v4, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    add-int/lit8 v6, v5, 0x1

    aput v1, v4, v6

    aput v3, v4, v5

    add-int/lit8 v5, v5, 0x2

    aput v0, v4, v5

    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveFrom:I

    iput v2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveTo:I

    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    :cond_1
    return-void
.end method

.method public final realizeOperationLocation(Z)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->composer:Landroidx/compose/runtime/ComposerImpl;

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p1, Landroidx/compose/runtime/SlotReader;->parent:I

    goto :goto_0

    :cond_0
    iget-object p1, v0, Landroidx/compose/runtime/ComposerImpl;->reader:Landroidx/compose/runtime/SlotReader;

    iget p1, p1, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    :goto_0
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    sub-int v0, p1, v0

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "Tried to seek backward"

    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :goto_1
    if-lez v0, :cond_2

    iget-object v1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->changeList:Landroidx/compose/runtime/changelist/ChangeList;

    iget-object v1, v1, Landroidx/compose/runtime/changelist/ChangeList;->operations:Landroidx/compose/runtime/changelist/Operations;

    sget-object v2, Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;->INSTANCE:Landroidx/compose/runtime/changelist/Operation$AdvanceSlotsBy;

    invoke-virtual {v1, v2}, Landroidx/compose/runtime/changelist/Operations;->pushOp(Landroidx/compose/runtime/changelist/Operation;)V

    iget-object v2, v1, Landroidx/compose/runtime/changelist/Operations;->intArgs:[I

    iget v3, v1, Landroidx/compose/runtime/changelist/Operations;->intArgsSize:I

    iget-object v4, v1, Landroidx/compose/runtime/changelist/Operations;->opCodes:[Landroidx/compose/runtime/changelist/Operation;

    iget v1, v1, Landroidx/compose/runtime/changelist/Operations;->opCodesSize:I

    add-int/lit8 v1, v1, -0x1

    aget-object v1, v4, v1

    iget v1, v1, Landroidx/compose/runtime/changelist/Operation;->ints:I

    sub-int/2addr v3, v1

    aput v0, v2, v3

    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->writersReaderDelta:I

    :cond_2
    return-void
.end method

.method public final removeNode(II)V
    .locals 2

    if-lez p2, :cond_3

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid remove index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    if-ne v0, p1, :cond_2

    iget p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    add-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    return-void

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->realizeNodeMovementOperations()V

    iput p1, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->removeFrom:I

    iput p2, p0, Landroidx/compose/runtime/changelist/ComposerChangeListWriter;->moveCount:I

    :cond_3
    return-void
.end method
