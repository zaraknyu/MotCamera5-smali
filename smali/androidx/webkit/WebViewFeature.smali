.class public abstract Landroidx/webkit/WebViewFeature;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static isFeatureSupported(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Landroidx/webkit/internal/WebViewFeatureInternal;->ALGORITHMIC_DARKENING:Landroidx/webkit/internal/ApiFeature$M;

    sget-object v0, Landroidx/webkit/internal/ApiFeature$M;->sValues:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/webkit/internal/ConditionallySupportedFeature;

    move-object v3, v2

    check-cast v3, Landroidx/webkit/internal/ApiFeature$M;

    iget-object v3, v3, Landroidx/webkit/internal/ApiFeature$M;->mPublicFeatureValue:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/webkit/internal/ConditionallySupportedFeature;

    check-cast v0, Landroidx/webkit/internal/ApiFeature$M;

    iget v2, v0, Landroidx/webkit/internal/ApiFeature$M;->$r8$classId:I

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move v1, v3

    :pswitch_1
    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroidx/webkit/internal/ApiFeature$M;->isSupportedByWebView()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    return v3

    :cond_4
    return v1

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown feature "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
