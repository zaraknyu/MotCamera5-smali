.class public abstract Lcom/motorola/camera/ui/compose/CustomModifiersKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static animateRotation$default(Landroidx/compose/ui/Modifier;F)Landroidx/compose/ui/Modifier;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/ui/compose/CustomModifiersKt$animateRotation$1;

    invoke-direct {v0, p1}, Lcom/motorola/camera/ui/compose/CustomModifiersKt$animateRotation$1;-><init>(F)V

    invoke-static {p0, v0}, Landroidx/compose/ui/Modifier_jvmKt;->composed(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    return-object p0
.end method
