.class public final Landroidx/compose/animation/ExitTransitionImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KeepUntilTransitionsFinished:Landroidx/compose/animation/ExitTransitionImpl;

.field public static final None:Landroidx/compose/animation/ExitTransitionImpl;


# instance fields
.field public final data:Landroidx/compose/animation/TransitionData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v1, Landroidx/compose/animation/TransitionData;

    const/4 v6, 0x0

    const/16 v7, 0x3f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    sput-object v0, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v1, Landroidx/compose/animation/TransitionData;

    const/16 v7, 0x2f

    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;Ljava/util/LinkedHashMap;I)V

    invoke-direct {v0, v1}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    sput-object v0, Landroidx/compose/animation/ExitTransitionImpl;->KeepUntilTransitionsFinished:Landroidx/compose/animation/ExitTransitionImpl;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/animation/TransitionData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Landroidx/compose/animation/ExitTransitionImpl;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/animation/ExitTransitionImpl;

    iget-object p1, p1, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    invoke-virtual {p0}, Landroidx/compose/animation/TransitionData;->hashCode()I

    move-result p0

    return p0
.end method

.method public final plus(Landroidx/compose/animation/ExitTransitionImpl;)Landroidx/compose/animation/ExitTransitionImpl;
    .locals 8

    new-instance v0, Landroidx/compose/animation/ExitTransitionImpl;

    new-instance v1, Landroidx/compose/animation/TransitionData;

    iget-object p1, p1, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v2, p1, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    :cond_0
    iget-object v3, p1, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-nez v3, :cond_1

    iget-object v3, p0, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    :cond_1
    iget-object v4, p1, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-nez v4, :cond_2

    iget-object v4, p0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    :cond_2
    move-object v5, v4

    iget-boolean v4, p1, Landroidx/compose/animation/TransitionData;->hold:Z

    if-nez v4, :cond_4

    iget-boolean v4, p0, Landroidx/compose/animation/TransitionData;->hold:Z

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move v6, v4

    goto :goto_2

    :cond_4
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :goto_2
    iget-object p0, p0, Landroidx/compose/animation/TransitionData;->effectsMap:Ljava/util/Map;

    iget-object p1, p1, Landroidx/compose/animation/TransitionData;->effectsMap:Ljava/util/Map;

    invoke-static {p0, p1}, Lkotlin/collections/MapsKt;->plus(Ljava/util/Map;Ljava/util/Map;)Ljava/util/LinkedHashMap;

    move-result-object v7

    const/4 v4, 0x0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/animation/TransitionData;-><init>(Landroidx/compose/animation/Fade;Landroidx/compose/animation/Slide;Landroidx/compose/animation/ChangeSize;Landroidx/compose/animation/Scale;ZLjava/util/Map;)V

    invoke-direct {v0, v1}, Landroidx/compose/animation/ExitTransitionImpl;-><init>(Landroidx/compose/animation/TransitionData;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    sget-object v0, Landroidx/compose/animation/ExitTransitionImpl;->None:Landroidx/compose/animation/ExitTransitionImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/ExitTransitionImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "ExitTransition.None"

    return-object p0

    :cond_0
    sget-object v0, Landroidx/compose/animation/ExitTransitionImpl;->KeepUntilTransitionsFinished:Landroidx/compose/animation/ExitTransitionImpl;

    invoke-virtual {p0, v0}, Landroidx/compose/animation/ExitTransitionImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "ExitTransition.KeepUntilTransitionsFinished"

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ExitTransition: \nFade - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/compose/animation/ExitTransitionImpl;->data:Landroidx/compose/animation/TransitionData;

    iget-object v1, p0, Landroidx/compose/animation/TransitionData;->fade:Landroidx/compose/animation/Fade;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/compose/animation/Fade;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\nSlide - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/animation/TransitionData;->slide:Landroidx/compose/animation/Slide;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroidx/compose/animation/Slide;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\nShrink - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\nScale - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/animation/TransitionData;->scale:Landroidx/compose/animation/Scale;

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/animation/Scale;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",\nKeepUntilTransitionsFinished - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Landroidx/compose/animation/TransitionData;->hold:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
