.class public final Lcom/tinder/StateMachine$Matcher;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final clazz:Ljava/lang/Class;

.field public final predicates:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tinder/StateMachine$Matcher;->clazz:Ljava/lang/Class;

    new-instance p1, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p0}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    filled-new-array {p1}, [Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/tinder/StateMachine$Matcher;->predicates:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final matches(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/tinder/StateMachine$Matcher;->predicates:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
