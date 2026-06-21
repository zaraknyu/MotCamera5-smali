.class public abstract Lcom/google/common/base/CharMatcher$FastMatcher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/common/base/CharMatcher$FastMatcher;->matches(C)Z

    move-result p0

    return p0
.end method

.method public abstract matches(C)Z
.end method
