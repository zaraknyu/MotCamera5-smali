.class public final Landroidx/compose/material3/CompatRippleTheme;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/material/ripple/RippleTheme;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/CompatRippleTheme;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/compose/material3/CompatRippleTheme;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/compose/material3/CompatRippleTheme;->INSTANCE:Landroidx/compose/material3/CompatRippleTheme;

    return-void
.end method


# virtual methods
.method public final defaultColor-WaAFU9c(Landroidx/compose/runtime/ComposerImpl;)J
    .locals 2

    const p0, -0x6df157d1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/material3/ContentColorKt;->LocalContentColor:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->consume(Landroidx/compose/runtime/ProvidableCompositionLocal;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/graphics/Color;

    iget-wide v0, p0, Landroidx/compose/ui/graphics/Color;->value:J

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-wide v0
.end method

.method public final rippleAlpha(Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/material/ripple/RippleAlpha;
    .locals 0

    const p0, -0x1157ee36

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    sget-object p0, Landroidx/compose/material3/ButtonKt;->RippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object p0
.end method
