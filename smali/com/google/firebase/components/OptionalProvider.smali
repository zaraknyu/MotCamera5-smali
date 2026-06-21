.class public final Lcom/google/firebase/components/OptionalProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/inject/Provider;


# instance fields
.field public volatile delegate:Lcom/google/firebase/inject/Provider;

.field public handler:Lcom/google/firebase/components/OptionalProvider$$Lambda$4;


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/firebase/components/OptionalProvider;->delegate:Lcom/google/firebase/inject/Provider;

    invoke-interface {p0}, Lcom/google/firebase/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
