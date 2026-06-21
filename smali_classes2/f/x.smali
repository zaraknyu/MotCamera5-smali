.class public final Lf/x;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final b:Landroidx/compose/runtime/MutableState;

.field public final c:Landroidx/compose/runtime/State;

.field public final d:Lf/a;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/ParcelableSnapshotMutableState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lf/a;)V
    .locals 1

    const-string v0, "pagesState"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "isInImageModeState"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf/x;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-object p2, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    iput-object p3, p0, Lf/x;->c:Landroidx/compose/runtime/State;

    iput-object p4, p0, Lf/x;->d:Lf/a;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lf/x;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lf/x;

    iget-object v0, p0, Lf/x;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iget-object v1, p1, Lf/x;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    iget-object v1, p1, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lf/x;->c:Landroidx/compose/runtime/State;

    iget-object v1, p1, Lf/x;->c:Landroidx/compose/runtime/State;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lf/x;->d:Lf/a;

    iget-object p1, p1, Lf/x;->d:Lf/a;

    invoke-virtual {p0, p1}, Lf/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lf/x;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, v0}, La/l;->a(Landroidx/compose/runtime/MutableState;I)I

    move-result v0

    iget-object v1, p0, Lf/x;->c:Landroidx/compose/runtime/State;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lf/x;->d:Lf/a;

    iget-object p0, p0, Lf/a;->a:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Params(currentDocumentPositionState="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lf/x;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pagesState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/x;->b:Landroidx/compose/runtime/MutableState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isInImageModeState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lf/x;->c:Landroidx/compose/runtime/State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callbacks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lf/x;->d:Lf/a;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
