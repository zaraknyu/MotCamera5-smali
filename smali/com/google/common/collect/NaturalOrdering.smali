.class public final Lcom/google/common/collect/NaturalOrdering;
.super Lcom/google/common/collect/Ordering;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INSTANCE:Lcom/google/common/collect/NaturalOrdering;

.field public static final INSTANCE$1:Lcom/google/common/collect/NaturalOrdering;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/common/collect/NaturalOrdering;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/common/collect/NaturalOrdering;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    new-instance v0, Lcom/google/common/collect/NaturalOrdering;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/common/collect/NaturalOrdering;-><init>(I)V

    sput-object v0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE$1:Lcom/google/common/collect/NaturalOrdering;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/common/collect/NaturalOrdering;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget p0, p0, Lcom/google/common/collect/NaturalOrdering;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    check-cast p1, Ljava/lang/Comparable;

    check-cast p2, Ljava/lang/Comparable;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final reverse()Lcom/google/common/collect/Ordering;
    .locals 0

    iget p0, p0, Lcom/google/common/collect/NaturalOrdering;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE:Lcom/google/common/collect/NaturalOrdering;

    return-object p0

    :pswitch_0
    sget-object p0, Lcom/google/common/collect/NaturalOrdering;->INSTANCE$1:Lcom/google/common/collect/NaturalOrdering;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lcom/google/common/collect/NaturalOrdering;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "Ordering.natural().reverse()"

    return-object p0

    :pswitch_0
    const-string p0, "Ordering.natural()"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
