.class public abstract Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-string/jumbo v1, "translationAlpha"

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Float;

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-string v1, "clipBounds"

    const/4 v2, 0x7

    const-class v3, Landroid/graphics/Rect;

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
