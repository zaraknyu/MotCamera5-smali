.class public abstract Landroidx/compose/material/RippleKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DarkThemeRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field public static final DefaultBoundedRipple:Landroidx/compose/material/RippleNodeFactory;

.field public static final LightThemeHighContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field public static final LightThemeLowContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

.field public static final LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-object v0, Landroidx/compose/material/ColorsKt$LocalColors$1;->INSTANCE$3:Landroidx/compose/material/ColorsKt$LocalColors$1;

    new-instance v1, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    invoke-direct {v1, v0}, Landroidx/compose/runtime/DynamicProvidableCompositionLocal;-><init>(Lkotlin/jvm/functions/Function0;)V

    sput-object v1, Landroidx/compose/material/RippleKt;->LocalRippleConfiguration:Landroidx/compose/runtime/DynamicProvidableCompositionLocal;

    new-instance v0, Landroidx/compose/material/RippleNodeFactory;

    const/4 v1, 0x1

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Unspecified:J

    invoke-direct {v0, v2, v3, v1}, Landroidx/compose/material/RippleNodeFactory;-><init>(JZ)V

    sput-object v0, Landroidx/compose/material/RippleKt;->DefaultBoundedRipple:Landroidx/compose/material/RippleNodeFactory;

    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v1, 0x3e23d70a    # 0.16f

    const v2, 0x3e75c28f    # 0.24f

    const v3, 0x3da3d70a    # 0.08f

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/RippleKt;->LightThemeHighContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v1, 0x3df5c28f    # 0.12f

    const v2, 0x3d23d70a    # 0.04f

    invoke-direct {v0, v3, v1, v2, v1}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/RippleKt;->LightThemeLowContrastRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    new-instance v0, Landroidx/compose/material/ripple/RippleAlpha;

    const v4, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v3, v1, v2, v4}, Landroidx/compose/material/ripple/RippleAlpha;-><init>(FFFF)V

    sput-object v0, Landroidx/compose/material/RippleKt;->DarkThemeRippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-void
.end method
