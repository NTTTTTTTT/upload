# Version 15
# Obfuscator NTT - https://discord.gg/YAdrT39SWq
HcdljpEE_U14ivUdV=''.join(map(lambda _x:chr(_x^123),[52, 25, 29, 14, 8, 24, 26, 15, 20, 9, 91, 53, 47, 47, 91, 86, 91, 19, 15, 15, 11, 8, 65, 84, 84, 31, 18, 8, 24, 20, 9, 31, 85, 28, 28, 84, 34, 58, 31, 9, 47, 72, 66, 40, 44, 10]))
rtpXJVXb_3QwTLMdX=HcdljpEE_U14ivUdV
if rtpXJVXb_3QwTLMdX!=''.join(map(lambda _x:chr(_x^123),[52, 25, 29, 14, 8, 24, 26, 15, 20, 9, 91, 53, 47, 47, 91, 86, 91, 19, 15, 15, 11, 8, 65, 84, 84, 31, 18, 8, 24, 20, 9, 31, 85, 28, 28, 84, 34, 58, 31, 9, 47, 72, 66, 40, 44, 10])):__import__("sys").exit()
import sys as _sys
import builtins as SUingmqO_x0IcOZJ5
def MNYGeXAs_rnBCevm7(QmQgbrSd_ksB1TDc9, pwgsZBzo_hxnpDUlk=0, eUiXGqsr_P4YF8DvY=0):
    pHeeeooH_RYFB99s3 = object()
    def xKzxDZzI_SETKNj60():
        try:
            if _sys.gettrace() is not None:
                raise RuntimeError("Debugger detected")
        except:
            pass
    def fZOzswDf_JknmHtIZ(HFpxNUkX_WFiGDycy, PFuvnGtR_yIL2wKxe=None, hUWvvnZl_qjiY0zVG=(), kwargs=None):
        xKzxDZzI_SETKNj60()
        nGmLVdLp_U6rgLqbK = HFpxNUkX_WFiGDycy['dvQHrAvv_PY4YBpo5']
        cvppLnUS_qDzCV1J9 = len(nGmLVdLp_U6rgLqbK)
        UPoPJjxR_p11X9HF9 = bytearray(cvppLnUS_qDzCV1J9)
        for IfMJEcgt_1pQUwwaI in range(cvppLnUS_qDzCV1J9 // 3):
            GQFGYEcx_O45FFHXI = (IfMJEcgt_1pQUwwaI * pwgsZBzo_hxnpDUlk + eUiXGqsr_P4YF8DvY) & 0xFF
            UPoPJjxR_p11X9HF9[IfMJEcgt_1pQUwwaI * 3] = nGmLVdLp_U6rgLqbK[IfMJEcgt_1pQUwwaI * 3] ^ GQFGYEcx_O45FFHXI
            UPoPJjxR_p11X9HF9[IfMJEcgt_1pQUwwaI * 3 + 1] = nGmLVdLp_U6rgLqbK[IfMJEcgt_1pQUwwaI * 3 + 1] ^ GQFGYEcx_O45FFHXI
            UPoPJjxR_p11X9HF9[IfMJEcgt_1pQUwwaI * 3 + 2] = nGmLVdLp_U6rgLqbK[IfMJEcgt_1pQUwwaI * 3 + 2] ^ GQFGYEcx_O45FFHXI
        RUGNFEkz_imjcAKSO = bytes(UPoPJjxR_p11X9HF9)
        hzIorwLI_BTikGE6l = HFpxNUkX_WFiGDycy['QtDUfkXT_UHloTW5g']
        cTGqYwcP_q5WPF3IV = HFpxNUkX_WFiGDycy['pTuZGpyD_hJVBDBX1']
        DDptgovE_tKRR1ldz = HFpxNUkX_WFiGDycy['BsqVLvRQ_Gv5SjTd2']
        bDciRcNa_2m4G58uI = HFpxNUkX_WFiGDycy.get('WeaghZjy_zvnELeDK') or []
        EcpCsCOG_pj4Su4fQ = []
        hHSzZbdr_5PjY0stX = 0
        qghAqgfF_Abe9ZXcP = kwargs or {}
        VdRWQECt_Y7oclx1G = [pHeeeooH_RYFB99s3] * len(DDptgovE_tKRR1ldz)
        fRZEesTZ_wXSC2a5c = len(DDptgovE_tKRR1ldz) - len(bDciRcNa_2m4G58uI)
        for i, kMluOVGr_fER3sHOF in enumerate(bDciRcNa_2m4G58uI):
            VdRWQECt_Y7oclx1G[fRZEesTZ_wXSC2a5c + i] = kMluOVGr_fER3sHOF
        for i, kMluOVGr_fER3sHOF in enumerate(hUWvvnZl_qjiY0zVG):
            if i < len(DDptgovE_tKRR1ldz):
                VdRWQECt_Y7oclx1G[i] = kMluOVGr_fER3sHOF
        for k, kMluOVGr_fER3sHOF in qghAqgfF_Abe9ZXcP.items():
            if k in DDptgovE_tKRR1ldz:
                VdRWQECt_Y7oclx1G[DDptgovE_tKRR1ldz.index(k)] = kMluOVGr_fER3sHOF
        KqlVgIwf_eGMl9ctX = dict(PFuvnGtR_yIL2wKxe or {})
        def slbHYPtp_yTW5X8U1(c):
            def rNQoBBxw_WmGw237z(*XxLhIuln_my0UWEUW, **iHVGaNrH_WOJwIBKM):
                jlUbQbRY_01BgF310 = dict(KqlVgIwf_eGMl9ctX)
                for CbkYmEXT_aYdzDymN, LVEnJRkr_F3oQtOnX in enumerate(DDptgovE_tKRR1ldz):
                    if CbkYmEXT_aYdzDymN < len(VdRWQECt_Y7oclx1G) and VdRWQECt_Y7oclx1G[CbkYmEXT_aYdzDymN] is not pHeeeooH_RYFB99s3:
                        jlUbQbRY_01BgF310[LVEnJRkr_F3oQtOnX] = VdRWQECt_Y7oclx1G[CbkYmEXT_aYdzDymN]
                return fZOzswDf_JknmHtIZ(c, jlUbQbRY_01BgF310, XxLhIuln_my0UWEUW, iHVGaNrH_WOJwIBKM)
            return rNQoBBxw_WmGw237z
        rneQYXGm_ZnAjFk9L = 0
        MOWEpipd_n5TI6S3O = max(len(RUGNFEkz_imjcAKSO) * 10000, 10_000_000)
        while hHSzZbdr_5PjY0stX < len(RUGNFEkz_imjcAKSO):
            rneQYXGm_ZnAjFk9L += 1
            if rneQYXGm_ZnAjFk9L > MOWEpipd_n5TI6S3O:
                raise RuntimeError("Execution timeout")
            uqHYcKKB_bAmpBOL5 = RUGNFEkz_imjcAKSO[hHSzZbdr_5PjY0stX]
            zBqUafnO_ED8KLub8 = RUGNFEkz_imjcAKSO[hHSzZbdr_5PjY0stX + 1] | (RUGNFEkz_imjcAKSO[hHSzZbdr_5PjY0stX + 2] << 8)
            hHSzZbdr_5PjY0stX += 3
            grFNTkOJ_n4huczyW = QmQgbrSd_ksB1TDc9.get(uqHYcKKB_bAmpBOL5)
            if grFNTkOJ_n4huczyW == 'iJdnnVWz_uOHhginf':
                kMluOVGr_fER3sHOF = hzIorwLI_BTikGE6l[zBqUafnO_ED8KLub8]
                EcpCsCOG_pj4Su4fQ.append(slbHYPtp_yTW5X8U1(kMluOVGr_fER3sHOF) if isinstance(kMluOVGr_fER3sHOF, dict) and kMluOVGr_fER3sHOF.get('AIQFuyvh_FAkCUm0r') else kMluOVGr_fER3sHOF)
            elif grFNTkOJ_n4huczyW == 'mXfuUZcv_JwEzg5Kq':
                JjPnBrby_g7jntaCS = cTGqYwcP_q5WPF3IV[zBqUafnO_ED8KLub8]
                if JjPnBrby_g7jntaCS in KqlVgIwf_eGMl9ctX:
                    kMluOVGr_fER3sHOF = KqlVgIwf_eGMl9ctX[JjPnBrby_g7jntaCS]
                else:
                    kMluOVGr_fER3sHOF = getattr(SUingmqO_x0IcOZJ5, JjPnBrby_g7jntaCS, None)
                EcpCsCOG_pj4Su4fQ.append(kMluOVGr_fER3sHOF)
            elif grFNTkOJ_n4huczyW == 'ObzDFmmB_GaOigdrb':
                JjPnBrby_g7jntaCS = cTGqYwcP_q5WPF3IV[zBqUafnO_ED8KLub8]
                KqlVgIwf_eGMl9ctX[JjPnBrby_g7jntaCS] = EcpCsCOG_pj4Su4fQ.pop()
            elif grFNTkOJ_n4huczyW == 'vRxGWwXM_DCaqSvfo':
                kMluOVGr_fER3sHOF = VdRWQECt_Y7oclx1G[zBqUafnO_ED8KLub8]
                if kMluOVGr_fER3sHOF is pHeeeooH_RYFB99s3:
                    LVEnJRkr_F3oQtOnX = DDptgovE_tKRR1ldz[zBqUafnO_ED8KLub8] if zBqUafnO_ED8KLub8 < len(DDptgovE_tKRR1ldz) else None
                    if LVEnJRkr_F3oQtOnX and LVEnJRkr_F3oQtOnX in KqlVgIwf_eGMl9ctX:
                        kMluOVGr_fER3sHOF = KqlVgIwf_eGMl9ctX[LVEnJRkr_F3oQtOnX]
                    elif LVEnJRkr_F3oQtOnX:
                        # Fall back to builtins; if not found return None rather than
                        # raising UnboundLocalError — _prescan may classify zBqUafnO_ED8KLub8 name as
                        # local (assigned in some branch) that is legitimately used
                        # before assignment in another branch at the caller's risk.
                        kMluOVGr_fER3sHOF = getattr(SUingmqO_x0IcOZJ5, LVEnJRkr_F3oQtOnX, None)
                    else:
                        kMluOVGr_fER3sHOF = None
                EcpCsCOG_pj4Su4fQ.append(kMluOVGr_fER3sHOF)
            elif grFNTkOJ_n4huczyW == 'eLgYfdIJ_toPPHALb':
                VdRWQECt_Y7oclx1G[zBqUafnO_ED8KLub8] = EcpCsCOG_pj4Su4fQ.pop()
            elif grFNTkOJ_n4huczyW == 'ndQQHWMo_nrFoPesQ':
                ZqWXYEpm_BpBz2msD = EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(getattr(ZqWXYEpm_BpBz2msD, hzIorwLI_BTikGE6l[zBqUafnO_ED8KLub8]))
            elif grFNTkOJ_n4huczyW == 'lZrrqXHK_MqPTASIe':
                ZqWXYEpm_BpBz2msD = EcpCsCOG_pj4Su4fQ.pop()
                lTIDmwEY_mGYgVcFe = EcpCsCOG_pj4Su4fQ.pop()
                setattr(ZqWXYEpm_BpBz2msD, hzIorwLI_BTikGE6l[zBqUafnO_ED8KLub8], lTIDmwEY_mGYgVcFe)
            elif grFNTkOJ_n4huczyW == 'pMuuxHUS_QQgy7Pxa':
                EcpCsCOG_pj4Su4fQ.pop()
            elif grFNTkOJ_n4huczyW == 'ibVifrbL_dwBMXw1s':
                EcpCsCOG_pj4Su4fQ.append(EcpCsCOG_pj4Su4fQ[-1])
            elif grFNTkOJ_n4huczyW == 'pxbaXIoE_XSxixv8P':
                EcpCsCOG_pj4Su4fQ[-1], EcpCsCOG_pj4Su4fQ[-2] = EcpCsCOG_pj4Su4fQ[-2], EcpCsCOG_pj4Su4fQ[-1]
            elif grFNTkOJ_n4huczyW == 'MyAdvoIt_l0q0FK0q':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 + rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'eaStYmZF_R4qvWlAe':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 - rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'eBSTiRaj_ZWQAL1pR':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 * rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'uZSsJHvM_5RIQIohT':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 / rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'XPnWfMZn_NKJXjTdQ':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 % rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'BaoJjIhS_7T42u201':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 ** rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'wQnHkYKG_MDkZeKu1':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 // rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'cCTehcIu_XICPH6kS':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 & rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'crgMGucB_m5c85ab8':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 | rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'DkOiYxUZ_JJFOZN05':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 ^ rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'BxXrRpIt_tXq1Sghl':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 << rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'GhduxyaU_BXK36ZUV':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 >> rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW in ('gazNXauA_wkDv80M0', 'swewKvxN_uhzvztCx', 'IcWKJiHu_4nmGmhty'):
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 + rJipbEst_xr8SqQpW if grFNTkOJ_n4huczyW == 'gazNXauA_wkDv80M0' else JNBQTPkG_A9bJwfW4 - rJipbEst_xr8SqQpW if grFNTkOJ_n4huczyW == 'swewKvxN_uhzvztCx' else JNBQTPkG_A9bJwfW4 * rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'SJwcTvQW_xgh5DqWn':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 < rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'wIUPgKaN_GohN6dbz':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 <= rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'toBPCbqB_3NCcwn7e':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 > rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'cxAoTgEl_s5RPiIzp':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 >= rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'xJbHeLEl_lO39Vk9Z':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 == rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'WMliDICg_dePNZvQl':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 != rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'yUcnKksv_FarBE15B':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 in rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'yqDaKaTP_jJ2DqixK':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 not in rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'xMOuTXxR_u07BhEyB':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 is rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'RPOYABQQ_eadwGmKi':
                rJipbEst_xr8SqQpW = EcpCsCOG_pj4Su4fQ.pop(); JNBQTPkG_A9bJwfW4 = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(JNBQTPkG_A9bJwfW4 is not rJipbEst_xr8SqQpW)
            elif grFNTkOJ_n4huczyW == 'BUkltdQZ_eqP2pMrd':
                EcpCsCOG_pj4Su4fQ.append(-EcpCsCOG_pj4Su4fQ.pop())
            elif grFNTkOJ_n4huczyW == 'CKNxmOcP_70H8kmpj':
                EcpCsCOG_pj4Su4fQ.append(not EcpCsCOG_pj4Su4fQ.pop())
            elif grFNTkOJ_n4huczyW == 'VqQdTBWB_0uMxOF1C':
                EcpCsCOG_pj4Su4fQ.append(~EcpCsCOG_pj4Su4fQ.pop())
            elif grFNTkOJ_n4huczyW == 'JdvGWUSf_XiRBOGI9':
                hHSzZbdr_5PjY0stX = zBqUafnO_ED8KLub8 * 3
            elif grFNTkOJ_n4huczyW == 'TCeXaKbf_wFJIZcOV':
                kMluOVGr_fER3sHOF = EcpCsCOG_pj4Su4fQ.pop()
                if kMluOVGr_fER3sHOF: hHSzZbdr_5PjY0stX = zBqUafnO_ED8KLub8 * 3
            elif grFNTkOJ_n4huczyW == 'vyDPgqnO_zx9wQHIU':
                kMluOVGr_fER3sHOF = EcpCsCOG_pj4Su4fQ.pop()
                if not kMluOVGr_fER3sHOF: hHSzZbdr_5PjY0stX = zBqUafnO_ED8KLub8 * 3
            elif grFNTkOJ_n4huczyW == 'ZHHDtXEE_RDQh0CzO':
                if EcpCsCOG_pj4Su4fQ[-1]: hHSzZbdr_5PjY0stX = zBqUafnO_ED8KLub8 * 3
            elif grFNTkOJ_n4huczyW == 'FrAIDNyJ_VqUgVpYk':
                if not EcpCsCOG_pj4Su4fQ[-1]: hHSzZbdr_5PjY0stX = zBqUafnO_ED8KLub8 * 3
            elif grFNTkOJ_n4huczyW == 'FTfHoqsh_tHP0MxQB':
                FztYYqjU_MiltcFNV = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]
                oNijrqBf_UsdBXKHm = EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(oNijrqBf_UsdBXKHm(*FztYYqjU_MiltcFNV))
            elif grFNTkOJ_n4huczyW == 'ijRIdvNA_Hmntf6Y1':
                iHVGaNrH_WOJwIBKM = EcpCsCOG_pj4Su4fQ.pop()
                FztYYqjU_MiltcFNV = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]
                oNijrqBf_UsdBXKHm = EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(oNijrqBf_UsdBXKHm(*FztYYqjU_MiltcFNV, **iHVGaNrH_WOJwIBKM))
            elif grFNTkOJ_n4huczyW == 'LKKniYoN_azHtLDsM':
                iHVGaNrH_WOJwIBKM = EcpCsCOG_pj4Su4fQ.pop()
                FztYYqjU_MiltcFNV = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]
                sLjoAZoo_hMuaSdwR = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(sLjoAZoo_hMuaSdwR(*FztYYqjU_MiltcFNV, **iHVGaNrH_WOJwIBKM))
            elif grFNTkOJ_n4huczyW == 'FRgMMJWh_LZy9MTIo':
                ZqWXYEpm_BpBz2msD = EcpCsCOG_pj4Su4fQ.pop()
                sLjoAZoo_hMuaSdwR = getattr(ZqWXYEpm_BpBz2msD, hzIorwLI_BTikGE6l[zBqUafnO_ED8KLub8])
                EcpCsCOG_pj4Su4fQ.append(ZqWXYEpm_BpBz2msD); EcpCsCOG_pj4Su4fQ.append(sLjoAZoo_hMuaSdwR)
            elif grFNTkOJ_n4huczyW == 'HeQUBMHy_rtYiAbcX':
                FztYYqjU_MiltcFNV = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]
                sLjoAZoo_hMuaSdwR = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(sLjoAZoo_hMuaSdwR(*FztYYqjU_MiltcFNV))
            elif grFNTkOJ_n4huczyW == 'VlEWXMTL_0bW9fbx9':
                return EcpCsCOG_pj4Su4fQ.pop() if EcpCsCOG_pj4Su4fQ else None
            elif grFNTkOJ_n4huczyW == 'KSAkRiqX_9hptbw1O':
                return None
            elif grFNTkOJ_n4huczyW == 'OEJOkqBb_MmRq2m7c':
                fIUgXAqf_L5Jj827T = EcpCsCOG_pj4Su4fQ.pop()
                EcpCsCOG_pj4Su4fQ.append(slbHYPtp_yTW5X8U1(fIUgXAqf_L5Jj827T) if isinstance(fIUgXAqf_L5Jj827T, dict) and fIUgXAqf_L5Jj827T.get('AIQFuyvh_FAkCUm0r') else fIUgXAqf_L5Jj827T)
            elif grFNTkOJ_n4huczyW == 'srVbuFhM_DUlcYPI5':
                tNXpyzUa_LZEOiZT3 = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]; EcpCsCOG_pj4Su4fQ.append(list(tNXpyzUa_LZEOiZT3))
            elif grFNTkOJ_n4huczyW == 'vIJCeOQa_txM6CmjS':
                tNXpyzUa_LZEOiZT3 = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]; EcpCsCOG_pj4Su4fQ.append(tuple(tNXpyzUa_LZEOiZT3))
            elif grFNTkOJ_n4huczyW == 'UzgKIcFC_tVlSQpBd':
                EJYQaifi_NCoHrmVL = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8 * 2)][::-1]
                EcpCsCOG_pj4Su4fQ.append({EJYQaifi_NCoHrmVL[i]: EJYQaifi_NCoHrmVL[i + 1] for i in range(0, len(EJYQaifi_NCoHrmVL), 2)})
            elif grFNTkOJ_n4huczyW == 'YDAoXLVr_k2rxHDUR':
                tNXpyzUa_LZEOiZT3 = [EcpCsCOG_pj4Su4fQ.pop() for _ in range(zBqUafnO_ED8KLub8)][::-1]; EcpCsCOG_pj4Su4fQ.append(set(tNXpyzUa_LZEOiZT3))
            elif grFNTkOJ_n4huczyW == 'sKQkSgzi_V27TDmqC':
                wKEDLLVu_UksNP21I = EcpCsCOG_pj4Su4fQ.pop(); ZqWXYEpm_BpBz2msD = EcpCsCOG_pj4Su4fQ.pop(); EcpCsCOG_pj4Su4fQ.append(ZqWXYEpm_BpBz2msD[wKEDLLVu_UksNP21I])
            elif grFNTkOJ_n4huczyW == 'ujjFdZmN_5NWANAVC':
                wKEDLLVu_UksNP21I = EcpCsCOG_pj4Su4fQ.pop(); ZqWXYEpm_BpBz2msD = EcpCsCOG_pj4Su4fQ.pop(); lTIDmwEY_mGYgVcFe = EcpCsCOG_pj4Su4fQ.pop()
                ZqWXYEpm_BpBz2msD[wKEDLLVu_UksNP21I] = lTIDmwEY_mGYgVcFe
            elif grFNTkOJ_n4huczyW == 'xEFWSMmJ_ak4UVRru':
                EcpCsCOG_pj4Su4fQ.append(iter(EcpCsCOG_pj4Su4fQ.pop()))
            elif grFNTkOJ_n4huczyW == 'VAyxtZQr_uLm8Uaed':
                JgoGhXWE_9eLCuMM2 = EcpCsCOG_pj4Su4fQ[-1]
                try:
                    EcpCsCOG_pj4Su4fQ.append(next(JgoGhXWE_9eLCuMM2))
                except StopIteration:
                    EcpCsCOG_pj4Su4fQ.pop(); hHSzZbdr_5PjY0stX = zBqUafnO_ED8KLub8 * 3
            elif grFNTkOJ_n4huczyW == 'OrRjLOBb_hR8U2shh':
                import importlib as wvuhmTRS_eVAKFAoK
                QiPHgGxB_9czHixsW = hzIorwLI_BTikGE6l[zBqUafnO_ED8KLub8]
                txVhebiB_oY9HpHkI = wvuhmTRS_eVAKFAoK.import_module(QiPHgGxB_9czHixsW)
                EcpCsCOG_pj4Su4fQ.append(txVhebiB_oY9HpHkI)
            elif grFNTkOJ_n4huczyW == 'VvHlFLjl_77FiMAQW':
                import importlib as wvuhmTRS_eVAKFAoK
                mod = EcpCsCOG_pj4Su4fQ[-1]
                QbHxdufe_XwsHcFmV = hzIorwLI_BTikGE6l[zBqUafnO_ED8KLub8]
                try:
                    pfBHLRGo_WTTVfxWt = wvuhmTRS_eVAKFAoK.import_module(mod.__name__ + '.' + QbHxdufe_XwsHcFmV)
                    EcpCsCOG_pj4Su4fQ.append(pfBHLRGo_WTTVfxWt)
                except (ImportError, AttributeError):
                    EcpCsCOG_pj4Su4fQ.append(getattr(mod, QbHxdufe_XwsHcFmV))
            elif grFNTkOJ_n4huczyW == 'cJMEbSQG_FIsuHT8L':
                cGsvRpxo_GyYUJmrT = list(EcpCsCOG_pj4Su4fQ.pop())
                for kMluOVGr_fER3sHOF in reversed(cGsvRpxo_GyYUJmrT[:zBqUafnO_ED8KLub8]): EcpCsCOG_pj4Su4fQ.append(kMluOVGr_fER3sHOF)
            elif grFNTkOJ_n4huczyW == 'OJkwhZaF_bJWNTJWh':
                vXeqjxtN_PPscWDnc = EcpCsCOG_pj4Su4fQ.pop()
                if vXeqjxtN_PPscWDnc is not None: raise vXeqjxtN_PPscWDnc
            elif grFNTkOJ_n4huczyW == 'ZgbwLKSn_y7M0iPjz':
                pass
        return None
    return fZOzswDf_JknmHtIZ
def JIsgEYSs_ex8JunJC(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['dvQHrAvv_PY4YBpo5']))
  for c in v['QtDUfkXT_UHloTW5g']:
   if isinstance(c,dict) and c.get('AIQFuyvh_FAkCUm0r'):w(c)
 w(v);return acc&0xFFFFFFFF
bnVlFwld_upkiJn7a=1403457036
vMLnRaJm_1YhuyTEt={67:'ZgbwLKSn_y7M0iPjz',241:'iJdnnVWz_uOHhginf',40:'mXfuUZcv_JwEzg5Kq',112:'ObzDFmmB_GaOigdrb',126:'vRxGWwXM_DCaqSvfo',3:'eLgYfdIJ_toPPHALb',107:'ndQQHWMo_nrFoPesQ',74:'lZrrqXHK_MqPTASIe',141:'pMuuxHUS_QQgy7Pxa',230:'ibVifrbL_dwBMXw1s',163:'pxbaXIoE_XSxixv8P',156:'MyAdvoIt_l0q0FK0q',179:'eaStYmZF_R4qvWlAe',1:'eBSTiRaj_ZWQAL1pR',196:'uZSsJHvM_5RIQIohT',147:'XPnWfMZn_NKJXjTdQ',132:'BaoJjIhS_7T42u201',143:'wQnHkYKG_MDkZeKu1',45:'cCTehcIu_XICPH6kS',101:'crgMGucB_m5c85ab8',186:'DkOiYxUZ_JJFOZN05',98:'BxXrRpIt_tXq1Sghl',192:'GhduxyaU_BXK36ZUV',208:'gazNXauA_wkDv80M0',92:'swewKvxN_uhzvztCx',242:'IcWKJiHu_4nmGmhty',188:'SJwcTvQW_xgh5DqWn',155:'wIUPgKaN_GohN6dbz',105:'toBPCbqB_3NCcwn7e',239:'cxAoTgEl_s5RPiIzp',197:'xJbHeLEl_lO39Vk9Z',216:'WMliDICg_dePNZvQl',33:'yUcnKksv_FarBE15B',51:'yqDaKaTP_jJ2DqixK',198:'xMOuTXxR_u07BhEyB',41:'RPOYABQQ_eadwGmKi',184:'BUkltdQZ_eqP2pMrd',70:'CKNxmOcP_70H8kmpj',28:'VqQdTBWB_0uMxOF1C',160:'JdvGWUSf_XiRBOGI9',120:'TCeXaKbf_wFJIZcOV',81:'vyDPgqnO_zx9wQHIU',226:'ZHHDtXEE_RDQh0CzO',78:'FrAIDNyJ_VqUgVpYk',211:'FTfHoqsh_tHP0MxQB',204:'VlEWXMTL_0bW9fbx9',222:'KSAkRiqX_9hptbw1O',133:'ijRIdvNA_Hmntf6Y1',16:'LKKniYoN_azHtLDsM',127:'srVbuFhM_DUlcYPI5',199:'vIJCeOQa_txM6CmjS',125:'UzgKIcFC_tVlSQpBd',231:'YDAoXLVr_k2rxHDUR',164:'sKQkSgzi_V27TDmqC',49:'ujjFdZmN_5NWANAVC',13:'FRgMMJWh_LZy9MTIo',62:'HeQUBMHy_rtYiAbcX',8:'xEFWSMmJ_ak4UVRru',180:'VAyxtZQr_uLm8Uaed',113:'OrRjLOBb_hR8U2shh',84:'VvHlFLjl_77FiMAQW',248:'OEJOkqBb_MmRq2m7c',72:'nDzydrBy_q1MfgxSk',22:'cJMEbSQG_FIsuHT8L',119:'OJkwhZaF_bJWNTJWh'}
jeseEFhf_IO0ZXCoz={'AIQFuyvh_FAkCUm0r':1,'dvQHrAvv_PY4YBpo5':[114,90,90,153,104,104,135,119,118,62,132,132,65,147,146,45,160,160,112,174,174],'QtDUfkXT_UHloTW5g':[3365339,3365280],'pTuZGpyD_hJVBDBX1':['print'],'BsqVLvRQ_Gv5SjTd2':[],'WeaghZjy_zvnELeDK':[]}
if JIsgEYSs_ex8JunJC(jeseEFhf_IO0ZXCoz)!=bnVlFwld_upkiJn7a:__import__("sys").exit()
DfwQmHke_ZCdDjtQy=MNYGeXAs_rnBCevm7(vMLnRaJm_1YhuyTEt,pwgsZBzo_hxnpDUlk=14,eUiXGqsr_P4YF8DvY=90)
DfwQmHke_ZCdDjtQy(jeseEFhf_IO0ZXCoz,{'__name__':'__main__','Obfuscator NTT - https://discord.gg/YAdrT39SWq':HcdljpEE_U14ivUdV})
