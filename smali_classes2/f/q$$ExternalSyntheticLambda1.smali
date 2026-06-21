.class public final synthetic Lf/q$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lf/v;


# direct methods
.method public synthetic constructor <init>(Lf/v;I)V
    .locals 0

    iput p2, p0, Lf/q$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p1, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lf/q$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    iget-object v0, p0, Lf/v;->i:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/D;

    invoke-virtual {p0, v1}, Lf/v;->a(Lf/D;)I

    move-result p0

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/E;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lf/E;->d:Le/W;

    goto :goto_0

    :cond_0
    sget-object p0, Lf/F;->a:Lf/F;

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    iget-object v0, p0, Lf/v;->i:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/D;

    invoke-virtual {p0, v1}, Lf/v;->a(Lf/D;)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/E;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    iget-object v0, p0, Lf/v;->i:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {v0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lf/v;->a:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf/D;

    invoke-virtual {p0, v1}, Lf/v;->a(Lf/D;)I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/E;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    iget-object v0, p0, Lf/v;->e:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    :goto_1
    return-object p0

    :pswitch_3
    iget-object p0, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    iget-object p0, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lf/q$$ExternalSyntheticLambda1;->f$0:Lf/v;

    iget-object p0, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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
