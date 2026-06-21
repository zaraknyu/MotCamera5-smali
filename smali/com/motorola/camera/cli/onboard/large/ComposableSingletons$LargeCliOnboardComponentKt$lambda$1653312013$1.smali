.class public final Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt$lambda$1653312013$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt$lambda$1653312013$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt$lambda$1653312013$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt$lambda$1653312013$1;->INSTANCE:Lcom/motorola/camera/cli/onboard/large/ComposableSingletons$LargeCliOnboardComponentKt$lambda$1653312013$1;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/ComposerImpl;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x3

    const/4 p1, 0x2

    if-ne p0, p1, :cond_1

    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->getSkipping()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v5}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    const p0, 0x7f0801a5

    invoke-static {p0, v5}, Landroidx/compose/ui/res/VectorResources_androidKt;->vectorResource(ILandroidx/compose/runtime/ComposerImpl;)Landroidx/compose/ui/graphics/vector/ImageVector;

    move-result-object v0

    const p0, 0x7f12033b

    invoke-static {p0, v5}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/ComposerImpl;)Ljava/lang/String;

    move-result-object v1

    sget-wide v3, Landroidx/compose/ui/graphics/Color;->White:J

    const/16 v6, 0xc00

    const/4 v7, 0x4

    const/4 v2, 0x0

    invoke-static/range {v0 .. v7}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/ComposerImpl;II)V

    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
