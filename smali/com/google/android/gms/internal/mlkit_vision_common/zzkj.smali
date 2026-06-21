.class public abstract Lcom/google/android/gms/internal/mlkit_vision_common/zzkj;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static toMemoryMb(F)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/text/Format;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, " MB"

    invoke-static {p0, v0}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
