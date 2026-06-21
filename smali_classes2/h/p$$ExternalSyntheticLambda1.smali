.class public final synthetic Lh/p$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic f$0:Lh/p;


# direct methods
.method public synthetic constructor <init>(Lh/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/p$$ExternalSyntheticLambda1;->f$0:Lh/p;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    iget-object p0, p0, Lh/p$$ExternalSyntheticLambda1;->f$0:Lh/p;

    iget-object p2, p0, Lh/p;->g:Ljava/util/BitSet;

    invoke-virtual {p2, p1}, Ljava/util/BitSet;->clear(I)V

    iget-object p2, p0, Lh/p;->h:Lh/o;

    if-eqz p2, :cond_2

    iget-object p3, p2, Lh/o;->a:Lh/F;

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lh/F;->getPageIndex()I

    move-result p3

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    :goto_1
    iget-object v0, p0, Lh/p;->c:Lh/C;

    invoke-virtual {v0, p1}, Lh/C;->getPage(I)Lh/F;

    move-result-object p1

    if-eqz p3, :cond_2

    if-eqz p1, :cond_2

    iget-object p2, p2, Lh/o;->b:Lkotlin/jvm/functions/Function1;

    invoke-interface {p2, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lh/p;->h:Lh/o;

    :cond_2
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
