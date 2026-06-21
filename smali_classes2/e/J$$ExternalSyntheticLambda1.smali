.class public final synthetic Le/J$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/J$$ExternalSyntheticLambda1;->$r8$classId:I

    iput-object p2, p0, Le/J$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Le/J$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Le/J$$ExternalSyntheticLambda1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Le/J$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lh/p;

    iget-object p0, p0, Le/J$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Le/A0;

    check-cast p1, Lf/D;

    const-string v1, "documentPosition"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, Lh/p;->a:Le/J0;

    iget-object v0, v0, Le/J0;->c:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    iget p1, p1, Lf/D;->a:I

    iget-object p0, p0, Le/A0;->e:Lc/B;

    sget-object v0, Le/A0;->g:[Lkotlin/reflect/KProperty;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lkotlin/properties/ObservableProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)V

    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Le/J$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Le/H0;

    iget-object p0, p0, Le/J$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Le/t;

    const-string v1, "updatedCrop"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    iget-object p0, v0, Le/H0;->h:Lkotlin/jvm/functions/Function1;

    new-instance v0, Lc/a;

    invoke-direct {v0}, Lc/a;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_1
    const/4 v3, 0x4

    if-ge v1, v3, :cond_4

    add-int/lit8 v3, v1, 0x1

    rem-int/lit8 v1, v1, 0x4

    const/4 v4, -0x3

    if-eq v1, v4, :cond_2

    const/4 v4, -0x2

    if-eq v1, v4, :cond_1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    const/4 v4, 0x1

    if-eq v1, v4, :cond_2

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    iget-wide v4, p1, Le/t;->a:J

    goto :goto_2

    :cond_0
    iget-wide v4, p1, Le/t;->d:J

    goto :goto_2

    :cond_1
    iget-wide v4, p1, Le/t;->c:J

    goto :goto_2

    :cond_2
    iget-wide v4, p1, Le/t;->b:J

    :goto_2
    add-int/lit8 v1, v2, 0x1

    if-ltz v2, :cond_3

    iget-object v6, v0, Lc/a;->a:[Landroid/graphics/PointF;

    aget-object v2, v6, v2

    const/16 v6, 0x20

    shr-long v6, v4, v6

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v7, 0xffffffffL

    and-long/2addr v4, v7

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {v2, v6, v4}, Landroid/graphics/PointF;->set(FF)V

    move v2, v1

    move v1, v3

    goto :goto_1

    :cond_3
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    const/4 p0, 0x0

    throw p0

    :cond_4
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Le/J$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object p0, p0, Le/J$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Lf/C;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ltz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object p0, p0, Lf/C;->f:Lf/v;

    iget-object p0, p0, Lf/v;->h:Lf/b;

    iget-object p0, p0, Lf/b;->a:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :pswitch_2
    iget-object v0, p0, Le/J$$ExternalSyntheticLambda1;->f$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Le/J$$ExternalSyntheticLambda1;->f$1:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/runtime/MutableState;

    check-cast p1, Le/t;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
