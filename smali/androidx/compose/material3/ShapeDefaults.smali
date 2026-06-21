.class public abstract Landroidx/compose/material3/ShapeDefaults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final ExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final Large:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final Medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

.field public static final Small:Landroidx/compose/foundation/shape/RoundedCornerShape;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->ExtraSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerSmall:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->Small:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerMedium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->Medium:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->Large:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sget-object v0, Landroidx/compose/material3/tokens/ShapeTokens;->CornerExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    sput-object v0, Landroidx/compose/material3/ShapeDefaults;->ExtraLarge:Landroidx/compose/foundation/shape/RoundedCornerShape;

    return-void
.end method
