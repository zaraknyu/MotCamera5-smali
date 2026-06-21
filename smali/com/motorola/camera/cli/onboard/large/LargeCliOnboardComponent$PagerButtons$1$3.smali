.class public final Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$PagerButtons$1$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic $isLastPage:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$PagerButtons$1$3;->$isLastPage:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p1

    and-int/lit8 p1, p1, 0x3

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_5

    :cond_1
    :goto_0
    iget-boolean p0, p0, Lcom/motorola/camera/cli/onboard/large/LargeCliOnboardComponent$PagerButtons$1$3;->$isLastPage:Z

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    const p2, 0x6f345d76

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p2, 0x7f0801c5

    invoke-static {p2, v5}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_1
    move-object v0, p2

    goto :goto_2

    :cond_2
    const p2, 0x6f35e878

    invoke-virtual {v5, p2}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p2, 0x7f0801e7

    invoke-static {p2, v5}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object p2

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_1

    :goto_2
    if-eqz p0, :cond_3

    const p0, 0x6f381ab5

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p0, 0x7f12033a

    invoke-static {p0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    :goto_3
    move-object v1, p0

    goto :goto_4

    :cond_3
    const p0, 0x6f39a997

    invoke-virtual {v5, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const p0, 0x7f12033c

    invoke-static {p0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_3

    :goto_4
    const/4 v6, 0x0

    const/16 v7, 0xc

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
