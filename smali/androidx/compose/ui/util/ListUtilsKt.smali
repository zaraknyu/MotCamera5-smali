.class public abstract Landroidx/compose/ui/util/ListUtilsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static fastJoinToString$default(ILjava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 7

    sget-object v0, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->INSTANCE$2:Landroidx/compose/ui/text/SaversKt$LinkSaver$2;

    and-int/lit8 v1, p0, 0x1

    if-eqz v1, :cond_0

    const-string p1, ", "

    :cond_0
    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_7

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    const/4 v6, 0x1

    add-int/2addr v4, v6

    if-le v4, v6, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v5}, Landroidx/compose/ui/text/SaversKt$LinkSaver$2;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_3
    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    instance-of v6, v5, Ljava/lang/CharSequence;

    :goto_1
    if-eqz v6, :cond_5

    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_2

    :cond_5
    instance-of v6, v5, Ljava/lang/Character;

    if-eqz v6, :cond_6

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/Appendable;

    goto :goto_2

    :cond_6
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final throwUnsupportedOperationException(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
