.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;
.super Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.source "SourceFile"


# static fields
.field public static final Instance:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;

    new-instance v1, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    const-string v2, "FallbackBuiltIns"

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;)V

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;->createBuiltInsModule()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;->Instance:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/FallbackBuiltIns;

    return-void
.end method


# virtual methods
.method public final bridge synthetic getPlatformDependentDeclarationFilter()Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/PlatformDependentDeclarationFilter;
    .locals 0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;->INSTANCE$1:Lkotlin/reflect/jvm/internal/impl/descriptors/deserialization/AdditionalClassPartsProvider$None;

    return-object p0
.end method
