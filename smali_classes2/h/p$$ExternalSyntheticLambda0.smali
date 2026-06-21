.class public final synthetic Lh/p$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic f$0:Lh/p;


# direct methods
.method public synthetic constructor <init>(Lh/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh/p$$ExternalSyntheticLambda0;->f$0:Lh/p;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    iget-object p0, p0, Lh/p$$ExternalSyntheticLambda0;->f$0:Lh/p;

    iget-object p0, p0, Lh/p;->g:Ljava/util/BitSet;

    invoke-virtual {p0, p1}, Ljava/util/BitSet;->set(I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
