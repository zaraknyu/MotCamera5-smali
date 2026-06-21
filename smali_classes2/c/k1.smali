.class public final Lc/k1;
.super Lkotlin/properties/ObservableProperty;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic a:Lc/s1;


# direct methods
.method public constructor <init>(Lc/a;Lc/s1;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lc/k1;->$r8$classId:I

    iput-object p2, p0, Lc/k1;->a:Lc/s1;

    .line 1
    invoke-direct {p0, p1}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lc/s1;I)V
    .locals 2

    iput p2, p0, Lc/k1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    const/4 p2, -0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p1, p0, Lc/k1;->a:Lc/s1;

    .line 2
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    :pswitch_0
    const-wide/16 v0, 0x0

    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p1, p0, Lc/k1;->a:Lc/s1;

    .line 4
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    const/4 p2, 0x0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p1, p0, Lc/k1;->a:Lc/s1;

    .line 6
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    const/4 p2, 0x0

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p1, p0, Lc/k1;->a:Lc/s1;

    .line 8
    invoke-direct {p0, p2}, Lkotlin/properties/ObservableProperty;-><init>(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final afterChange(Lkotlin/reflect/KProperty;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10

    iget v0, p0, Lc/k1;->$r8$classId:I

    const/4 v1, 0x0

    const-string v2, ":"

    const/4 v3, 0x4

    iget-object p0, p0, Lc/k1;->a:Lc/s1;

    const-string v4, "property"

    packed-switch v0, :pswitch_data_0

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lc/s1;->v()V

    :cond_0
    return-void

    :pswitch_0
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_1

    invoke-virtual {p0}, Lc/s1;->v()V

    :cond_1
    return-void

    :pswitch_1
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    if-eq p2, p1, :cond_2

    invoke-virtual {p0}, Lc/s1;->v()V

    :cond_2
    return-void

    :pswitch_2
    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    iput p2, p0, Lc/s1;->G:I

    if-eq p2, p1, :cond_9

    iget-object p2, p0, Lc/s1;->a:Lc/X;

    iget-object p3, p2, Lc/X;->b:Lc/M;

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    if-eqz p1, :cond_7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    if-eq p1, v3, :cond_3

    iget-object p1, p3, Lc/M;->k:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object p1, p3, Lc/M;->n:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object p1, p3, Lc/M;->m:Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-object p1, p3, Lc/M;->j:Ljava/lang/String;

    goto :goto_0

    :cond_6
    iget-object p1, p3, Lc/M;->i:Ljava/lang/String;

    goto :goto_0

    :cond_7
    iget-object p1, p3, Lc/M;->l:Ljava/lang/String;

    goto :goto_0

    :cond_8
    iget-object p1, p3, Lc/M;->k:Ljava/lang/String;

    :goto_0
    iget-object v0, p3, Lc/M;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lc/M;->z:Ljava/lang/String;

    sget-object p1, Lc/h;->j:Lc/e;

    iget-object p1, p2, Lc/X;->d:Lc/h;

    const/4 p2, 0x6

    invoke-static {p1, v1, p2}, Lc/e;->a(Lc/h;ZI)V

    invoke-virtual {p0}, Lc/s1;->v()V

    :cond_9
    return-void

    :pswitch_3
    iget-object v0, p0, Lc/s1;->g:Lc/E0;

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Lc/a;

    check-cast p2, Lc/a;

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, v0, Lc/E0;->o:Ljava/lang/String;

    if-nez p1, :cond_b

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lc/s1;->K:Ljava/lang/Object;

    iput-object p1, p0, Lc/s1;->L:Lb/c;

    iget-object v4, p3, Lc/a;->a:[Landroid/graphics/PointF;

    const-string p1, "points"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v8, Lc/a$$ExternalSyntheticLambda0;

    const/16 p1, 0xe

    invoke-direct {v8, p1}, Lc/a$$ExternalSyntheticLambda0;-><init>(I)V

    const-string v7, "]"

    const/16 v9, 0x18

    const-string v5, ","

    const-string v6, "["

    invoke-static/range {v4 .. v9}, Lkotlin/collections/ArraysKt;->joinToString$default([Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;I)Ljava/lang/String;

    move-result-object p1

    iget-object p2, v0, Lc/E0;->e:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lc/E0;->o:Ljava/lang/String;

    sget-object p1, Lc/h;->j:Lc/e;

    iget-object p1, p0, Lc/s1;->a:Lc/X;

    iget-object p1, p1, Lc/X;->d:Lc/h;

    invoke-static {p1, v1, v3}, Lc/e;->a(Lc/h;ZI)V

    invoke-virtual {p0}, Lc/s1;->v()V

    :cond_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
