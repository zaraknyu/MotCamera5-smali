.class public final synthetic Lf/u$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lf/u;


# direct methods
.method public synthetic constructor <init>(Lf/u;I)V
    .locals 0

    iput p2, p0, Lf/u$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lf/u$$ExternalSyntheticLambda0;->f$0:Lf/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf/u$$ExternalSyntheticLambda0;->$r8$classId:I

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lf/u$$ExternalSyntheticLambda0;->f$0:Lf/u;

    iget-object p0, p0, Lf/u;->a:Lf/v;

    iget-object p0, p0, Lf/v;->b:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/E;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lf/u$$ExternalSyntheticLambda0;->f$0:Lf/u;

    iget-object p0, p0, Lf/u;->a:Lf/v;

    iget-object p0, p0, Lf/v;->c:Landroidx/compose/runtime/DerivedSnapshotState;

    invoke-virtual {p0}, Landroidx/compose/runtime/DerivedSnapshotState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/collections/CollectionsKt;->getOrNull(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf/E;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
