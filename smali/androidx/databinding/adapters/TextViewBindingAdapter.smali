.class public abstract Landroidx/databinding/adapters/TextViewBindingAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eq p1, v0, :cond_9

    if-nez p1, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    instance-of v1, p1, Landroid/text/Spanned;

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v1

    :goto_0
    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eq v3, v2, :cond_4

    goto :goto_3

    :cond_4
    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_6

    goto :goto_3

    :cond_6
    :goto_2
    if-ge v1, v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_8

    :cond_7
    :goto_3
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    :goto_4
    return-void
.end method
