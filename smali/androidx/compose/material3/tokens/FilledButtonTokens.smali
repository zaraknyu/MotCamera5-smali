.class public abstract Landroidx/compose/material3/tokens/FilledButtonTokens;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ContainerElevation:F

.field public static final ContainerShape:I

.field public static final DisabledContainerColor:I

.field public static final DisabledContainerElevation:F

.field public static final DisabledLabelTextColor:I

.field public static final FocusContainerElevation:F

.field public static final HoverContainerElevation:F

.field public static final LabelTextColor:I

.field public static final PressedContainerElevation:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroidx/compose/material3/tokens/ElevationTokens;->Level0:F

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerElevation:F

    const/4 v1, 0x5

    sput v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->ContainerShape:I

    const/16 v1, 0x12

    sput v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerColor:I

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledContainerElevation:F

    sput v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->DisabledLabelTextColor:I

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->FocusContainerElevation:F

    sget v1, Landroidx/compose/material3/tokens/ElevationTokens;->Level1:F

    sput v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->HoverContainerElevation:F

    const/16 v1, 0xa

    sput v1, Landroidx/compose/material3/tokens/FilledButtonTokens;->LabelTextColor:I

    sput v0, Landroidx/compose/material3/tokens/FilledButtonTokens;->PressedContainerElevation:F

    return-void
.end method
