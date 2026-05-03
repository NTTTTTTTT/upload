# Version 15
# Obfuscator NTT - https://discord.gg/YAdrT39SWq
SvuUUhBB_30lrFcP6=''.join(map(lambda _x:chr(_x^61),[114, 95, 91, 72, 78, 94, 92, 73, 82, 79, 29, 115, 105, 105, 29, 16, 29, 85, 73, 73, 77, 78, 7, 18, 18, 89, 84, 78, 94, 82, 79, 89, 19, 90, 90, 18, 100, 124, 89, 79, 105, 14, 4, 110, 106, 76]))
xycuvcgu_JdDIezq4=SvuUUhBB_30lrFcP6
if xycuvcgu_JdDIezq4!=''.join(map(lambda _x:chr(_x^61),[114, 95, 91, 72, 78, 94, 92, 73, 82, 79, 29, 115, 105, 105, 29, 16, 29, 85, 73, 73, 77, 78, 7, 18, 18, 89, 84, 78, 94, 82, 79, 89, 19, 90, 90, 18, 100, 124, 89, 79, 105, 14, 4, 110, 106, 76])):__import__("sys").exit()
import sys as _sys
import builtins as ePglzaJJ_HN4cxYe9
def nTMHnpYh_l72e4lFm(TEGRFfgr_tQvY134g, LKHYIEtY_K5fyNlmf=0, fcnMVBoo_HbNnGy0J=0):
    lGqMMcNQ_FS7Va9r3 = object()
    def GbVwfyaI_NepezX9M():
        try:
            if _sys.gettrace() is not None:
                raise RuntimeError("Debugger detected")
        except:
            pass
    def McmThMzu_LkFbNWnr(IuFkHRPC_LnjAXAWq, daivdvlg_vI7mRmpT=None, aTuGWfRG_PoEeTxX1=(), kwargs=None):
        GbVwfyaI_NepezX9M()
        khmbpNud_C1IHwfcE = IuFkHRPC_LnjAXAWq['fAxUWyHU_wKC48vPq']
        EkOoAYDh_ov5b8ijh = len(khmbpNud_C1IHwfcE)
        VSjpDOFY_aUgbzUdf = bytearray(EkOoAYDh_ov5b8ijh)
        for dKsMOqWj_CeqMGv9W in range(EkOoAYDh_ov5b8ijh // 3):
            rDhlGPyF_iCm9BAY1 = (dKsMOqWj_CeqMGv9W * LKHYIEtY_K5fyNlmf + fcnMVBoo_HbNnGy0J) & 0xFF
            VSjpDOFY_aUgbzUdf[dKsMOqWj_CeqMGv9W * 3] = khmbpNud_C1IHwfcE[dKsMOqWj_CeqMGv9W * 3] ^ rDhlGPyF_iCm9BAY1
            VSjpDOFY_aUgbzUdf[dKsMOqWj_CeqMGv9W * 3 + 1] = khmbpNud_C1IHwfcE[dKsMOqWj_CeqMGv9W * 3 + 1] ^ rDhlGPyF_iCm9BAY1
            VSjpDOFY_aUgbzUdf[dKsMOqWj_CeqMGv9W * 3 + 2] = khmbpNud_C1IHwfcE[dKsMOqWj_CeqMGv9W * 3 + 2] ^ rDhlGPyF_iCm9BAY1
        fBnKyoOs_O4a4EDch = bytes(VSjpDOFY_aUgbzUdf)
        kigYCPCf_PeV2W8IO = IuFkHRPC_LnjAXAWq['usuVcGPn_vmhGYqeN']
        DFYTZynF_L8n2NUrD = IuFkHRPC_LnjAXAWq['lSINguoA_7ffl9uTB']
        QBeMQhiT_eaZB7xpe = IuFkHRPC_LnjAXAWq['yCpQNlVC_ISyPZY2t']
        ZBPQunyM_EPABVcBY = IuFkHRPC_LnjAXAWq.get('dBTPvLMA_QUyXrcUS') or []
        mJuOHWKg_IwdZ5E2S = []
        IvVsUskN_s9j6zABf = 0
        uDwOJxJB_R6F1uaPX = kwargs or {}
        gWfHaEcy_c5AgCri0 = [lGqMMcNQ_FS7Va9r3] * len(QBeMQhiT_eaZB7xpe)
        sPoafpUW_mKWYt7gi = len(QBeMQhiT_eaZB7xpe) - len(ZBPQunyM_EPABVcBY)
        for i, bHOHEbPb_zyJ2BJTF in enumerate(ZBPQunyM_EPABVcBY):
            gWfHaEcy_c5AgCri0[sPoafpUW_mKWYt7gi + i] = bHOHEbPb_zyJ2BJTF
        for i, bHOHEbPb_zyJ2BJTF in enumerate(aTuGWfRG_PoEeTxX1):
            if i < len(QBeMQhiT_eaZB7xpe):
                gWfHaEcy_c5AgCri0[i] = bHOHEbPb_zyJ2BJTF
        for k, bHOHEbPb_zyJ2BJTF in uDwOJxJB_R6F1uaPX.items():
            if k in QBeMQhiT_eaZB7xpe:
                gWfHaEcy_c5AgCri0[QBeMQhiT_eaZB7xpe.index(k)] = bHOHEbPb_zyJ2BJTF
        wCGwvnoE_4o65VqOQ = dict(daivdvlg_vI7mRmpT or {})
        def fYDmBJha_TY8BXynH(c):
            def SORsQHSY_ub0rmx3u(*qQYtPhzf_TUfDC6Dd, **NZCLdoOj_bQcUbIhr):
                fpBfEBio_JF1VIlwu = dict(wCGwvnoE_4o65VqOQ)
                for VCqvMXbw_OccJVB65, ZmBxaSGS_xxerVooH in enumerate(QBeMQhiT_eaZB7xpe):
                    if VCqvMXbw_OccJVB65 < len(gWfHaEcy_c5AgCri0) and gWfHaEcy_c5AgCri0[VCqvMXbw_OccJVB65] is not lGqMMcNQ_FS7Va9r3:
                        fpBfEBio_JF1VIlwu[ZmBxaSGS_xxerVooH] = gWfHaEcy_c5AgCri0[VCqvMXbw_OccJVB65]
                return McmThMzu_LkFbNWnr(c, fpBfEBio_JF1VIlwu, qQYtPhzf_TUfDC6Dd, NZCLdoOj_bQcUbIhr)
            return SORsQHSY_ub0rmx3u
        IrBuPckS_YkMesTOx = 0
        jsFMtKhx_jy3dDOcf = max(len(fBnKyoOs_O4a4EDch) * 10000, 10_000_000)
        while IvVsUskN_s9j6zABf < len(fBnKyoOs_O4a4EDch):
            IrBuPckS_YkMesTOx += 1
            if IrBuPckS_YkMesTOx > jsFMtKhx_jy3dDOcf:
                raise RuntimeError("Execution timeout")
            ayzPYmTO_Nv4q7miO = fBnKyoOs_O4a4EDch[IvVsUskN_s9j6zABf]
            lnKVeEau_etROKJGz = fBnKyoOs_O4a4EDch[IvVsUskN_s9j6zABf + 1] | (fBnKyoOs_O4a4EDch[IvVsUskN_s9j6zABf + 2] << 8)
            IvVsUskN_s9j6zABf += 3
            pWgXSsyT_WRJSQVNK = TEGRFfgr_tQvY134g.get(ayzPYmTO_Nv4q7miO)
            if pWgXSsyT_WRJSQVNK == 'AAKsljkd_fzOsy0VW':
                bHOHEbPb_zyJ2BJTF = kigYCPCf_PeV2W8IO[lnKVeEau_etROKJGz]
                mJuOHWKg_IwdZ5E2S.append(fYDmBJha_TY8BXynH(bHOHEbPb_zyJ2BJTF) if isinstance(bHOHEbPb_zyJ2BJTF, dict) and bHOHEbPb_zyJ2BJTF.get('ejTyCCvJ_2CFM7otn') else bHOHEbPb_zyJ2BJTF)
            elif pWgXSsyT_WRJSQVNK == 'moXstZjn_FVZkmENF':
                vrEysrCV_1ZYmmvmH = DFYTZynF_L8n2NUrD[lnKVeEau_etROKJGz]
                if vrEysrCV_1ZYmmvmH in wCGwvnoE_4o65VqOQ:
                    bHOHEbPb_zyJ2BJTF = wCGwvnoE_4o65VqOQ[vrEysrCV_1ZYmmvmH]
                else:
                    bHOHEbPb_zyJ2BJTF = getattr(ePglzaJJ_HN4cxYe9, vrEysrCV_1ZYmmvmH, None)
                mJuOHWKg_IwdZ5E2S.append(bHOHEbPb_zyJ2BJTF)
            elif pWgXSsyT_WRJSQVNK == 'FjJyvYkT_yQQTjEP1':
                vrEysrCV_1ZYmmvmH = DFYTZynF_L8n2NUrD[lnKVeEau_etROKJGz]
                wCGwvnoE_4o65VqOQ[vrEysrCV_1ZYmmvmH] = mJuOHWKg_IwdZ5E2S.pop()
            elif pWgXSsyT_WRJSQVNK == 'zimpNWtV_XLUxxyqI':
                bHOHEbPb_zyJ2BJTF = gWfHaEcy_c5AgCri0[lnKVeEau_etROKJGz]
                if bHOHEbPb_zyJ2BJTF is lGqMMcNQ_FS7Va9r3:
                    ZmBxaSGS_xxerVooH = QBeMQhiT_eaZB7xpe[lnKVeEau_etROKJGz] if lnKVeEau_etROKJGz < len(QBeMQhiT_eaZB7xpe) else None
                    if ZmBxaSGS_xxerVooH and ZmBxaSGS_xxerVooH in wCGwvnoE_4o65VqOQ:
                        bHOHEbPb_zyJ2BJTF = wCGwvnoE_4o65VqOQ[ZmBxaSGS_xxerVooH]
                    elif ZmBxaSGS_xxerVooH:
                        # Fall back to builtins; if not found return None rather than
                        # raising UnboundLocalError — _prescan may classify lnKVeEau_etROKJGz name as
                        # local (assigned in some branch) that is legitimately used
                        # before assignment in another branch at the caller's risk.
                        bHOHEbPb_zyJ2BJTF = getattr(ePglzaJJ_HN4cxYe9, ZmBxaSGS_xxerVooH, None)
                    else:
                        bHOHEbPb_zyJ2BJTF = None
                mJuOHWKg_IwdZ5E2S.append(bHOHEbPb_zyJ2BJTF)
            elif pWgXSsyT_WRJSQVNK == 'IFWJIqFR_qWRgquVg':
                gWfHaEcy_c5AgCri0[lnKVeEau_etROKJGz] = mJuOHWKg_IwdZ5E2S.pop()
            elif pWgXSsyT_WRJSQVNK == 'WigMcUzd_EJgO3WpP':
                xjutmXis_evXq5lgG = mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(getattr(xjutmXis_evXq5lgG, kigYCPCf_PeV2W8IO[lnKVeEau_etROKJGz]))
            elif pWgXSsyT_WRJSQVNK == 'sMjkdIFH_lDgdWZnG':
                xjutmXis_evXq5lgG = mJuOHWKg_IwdZ5E2S.pop()
                JFHzgXhm_pm9KHmOR = mJuOHWKg_IwdZ5E2S.pop()
                setattr(xjutmXis_evXq5lgG, kigYCPCf_PeV2W8IO[lnKVeEau_etROKJGz], JFHzgXhm_pm9KHmOR)
            elif pWgXSsyT_WRJSQVNK == 'LXmDlQyH_j6aSa5aC':
                mJuOHWKg_IwdZ5E2S.pop()
            elif pWgXSsyT_WRJSQVNK == 'WKfhBCGa_KL5MzrSL':
                mJuOHWKg_IwdZ5E2S.append(mJuOHWKg_IwdZ5E2S[-1])
            elif pWgXSsyT_WRJSQVNK == 'PdEucSKe_E0idIGLN':
                mJuOHWKg_IwdZ5E2S[-1], mJuOHWKg_IwdZ5E2S[-2] = mJuOHWKg_IwdZ5E2S[-2], mJuOHWKg_IwdZ5E2S[-1]
            elif pWgXSsyT_WRJSQVNK == 'SInKDbAH_fP6AQxiW':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 + QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'LhdBczOm_oC4aeUKD':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 - QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'mzbOVQcr_0n0FLCEy':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 * QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'MlfLyWja_3xDwQKqp':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 / QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'AaNJachr_fexr760m':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 % QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'SOacuOxA_bPhjDRuf':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 ** QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'WaBNXrRw_AmabHYBR':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 // QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'wfDdbjwU_4ymTudIB':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 & QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'JrQXehZq_GCGHj7EQ':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 | QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'JanKFXXq_DrG7ivJv':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 ^ QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'LXIAsDiP_UzdlxwfK':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 << QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'Vpslzyod_5fJbwdJT':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 >> QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK in ('tVUAOosJ_5OjtOsKv', 'lJuejHOB_EqYdYUIV', 'ihGmGHjE_wEvoIijW'):
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 + QjzeAnAN_8JVno4ce if pWgXSsyT_WRJSQVNK == 'tVUAOosJ_5OjtOsKv' else fuQBLAHd_ftOiLfy0 - QjzeAnAN_8JVno4ce if pWgXSsyT_WRJSQVNK == 'lJuejHOB_EqYdYUIV' else fuQBLAHd_ftOiLfy0 * QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'ZTJRJHeG_XY8r805o':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 < QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'LBtGJuGv_TPxW113W':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 <= QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'PnaKASmj_Hw18hj0o':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 > QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'VConQkoo_ev4Xnrf7':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 >= QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'wBpuyyCR_MI7mecSc':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 == QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'kUCUFPVE_0tVAyKN7':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 != QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'cTWSvIzw_dsoZutvq':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 in QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'GkTOQWdk_3FNG5iRt':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 not in QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'zKuRKDpr_lEyWhZLt':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 is QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'FIFTPWDF_EIyf1jkl':
                QjzeAnAN_8JVno4ce = mJuOHWKg_IwdZ5E2S.pop(); fuQBLAHd_ftOiLfy0 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(fuQBLAHd_ftOiLfy0 is not QjzeAnAN_8JVno4ce)
            elif pWgXSsyT_WRJSQVNK == 'zsNbWNOD_RgRzw78x':
                mJuOHWKg_IwdZ5E2S.append(-mJuOHWKg_IwdZ5E2S.pop())
            elif pWgXSsyT_WRJSQVNK == 'kHofKTdA_PxM5EEbE':
                mJuOHWKg_IwdZ5E2S.append(not mJuOHWKg_IwdZ5E2S.pop())
            elif pWgXSsyT_WRJSQVNK == 'CbKzRGeU_WaqVKImI':
                mJuOHWKg_IwdZ5E2S.append(~mJuOHWKg_IwdZ5E2S.pop())
            elif pWgXSsyT_WRJSQVNK == 'EwPggtvL_5oAr0VcC':
                IvVsUskN_s9j6zABf = lnKVeEau_etROKJGz * 3
            elif pWgXSsyT_WRJSQVNK == 'EoGgjNoa_jhsie37S':
                bHOHEbPb_zyJ2BJTF = mJuOHWKg_IwdZ5E2S.pop()
                if bHOHEbPb_zyJ2BJTF: IvVsUskN_s9j6zABf = lnKVeEau_etROKJGz * 3
            elif pWgXSsyT_WRJSQVNK == 'zRSEXQPK_i9Ed686J':
                bHOHEbPb_zyJ2BJTF = mJuOHWKg_IwdZ5E2S.pop()
                if not bHOHEbPb_zyJ2BJTF: IvVsUskN_s9j6zABf = lnKVeEau_etROKJGz * 3
            elif pWgXSsyT_WRJSQVNK == 'mXoGJJgl_WdyGxpqT':
                if mJuOHWKg_IwdZ5E2S[-1]: IvVsUskN_s9j6zABf = lnKVeEau_etROKJGz * 3
            elif pWgXSsyT_WRJSQVNK == 'rlyPuPYa_WlwSpE2y':
                if not mJuOHWKg_IwdZ5E2S[-1]: IvVsUskN_s9j6zABf = lnKVeEau_etROKJGz * 3
            elif pWgXSsyT_WRJSQVNK == 'zsYyDSbP_lgpDZoOQ':
                NSwoFnOM_Qufs9eCC = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]
                NxlqxmGf_mztzmIWR = mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(NxlqxmGf_mztzmIWR(*NSwoFnOM_Qufs9eCC))
            elif pWgXSsyT_WRJSQVNK == 'IUDRgTXS_ngbTFTe8':
                NZCLdoOj_bQcUbIhr = mJuOHWKg_IwdZ5E2S.pop()
                NSwoFnOM_Qufs9eCC = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]
                NxlqxmGf_mztzmIWR = mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(NxlqxmGf_mztzmIWR(*NSwoFnOM_Qufs9eCC, **NZCLdoOj_bQcUbIhr))
            elif pWgXSsyT_WRJSQVNK == 'rabLItcD_hEXDo3LS':
                NZCLdoOj_bQcUbIhr = mJuOHWKg_IwdZ5E2S.pop()
                NSwoFnOM_Qufs9eCC = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]
                vLDXhlpx_6n1lNvp2 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(vLDXhlpx_6n1lNvp2(*NSwoFnOM_Qufs9eCC, **NZCLdoOj_bQcUbIhr))
            elif pWgXSsyT_WRJSQVNK == 'SXKhAnJu_LRsuWFuX':
                xjutmXis_evXq5lgG = mJuOHWKg_IwdZ5E2S.pop()
                vLDXhlpx_6n1lNvp2 = getattr(xjutmXis_evXq5lgG, kigYCPCf_PeV2W8IO[lnKVeEau_etROKJGz])
                mJuOHWKg_IwdZ5E2S.append(xjutmXis_evXq5lgG); mJuOHWKg_IwdZ5E2S.append(vLDXhlpx_6n1lNvp2)
            elif pWgXSsyT_WRJSQVNK == 'nxSKIJBb_x4rG34gV':
                NSwoFnOM_Qufs9eCC = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]
                vLDXhlpx_6n1lNvp2 = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(vLDXhlpx_6n1lNvp2(*NSwoFnOM_Qufs9eCC))
            elif pWgXSsyT_WRJSQVNK == 'TlPYqTie_8lGMkD9V':
                return mJuOHWKg_IwdZ5E2S.pop() if mJuOHWKg_IwdZ5E2S else None
            elif pWgXSsyT_WRJSQVNK == 'TbUTIXfK_YXRBmM3S':
                return None
            elif pWgXSsyT_WRJSQVNK == 'nVOxNoLn_me8BS1hV':
                eFyyxWzL_NFiIv9My = mJuOHWKg_IwdZ5E2S.pop()
                mJuOHWKg_IwdZ5E2S.append(fYDmBJha_TY8BXynH(eFyyxWzL_NFiIv9My) if isinstance(eFyyxWzL_NFiIv9My, dict) and eFyyxWzL_NFiIv9My.get('ejTyCCvJ_2CFM7otn') else eFyyxWzL_NFiIv9My)
            elif pWgXSsyT_WRJSQVNK == 'SBHHOxXi_V5KYJArp':
                ZXYTWoiz_HfV0qxzg = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]; mJuOHWKg_IwdZ5E2S.append(list(ZXYTWoiz_HfV0qxzg))
            elif pWgXSsyT_WRJSQVNK == 'lpzxcJLQ_b882WR9M':
                ZXYTWoiz_HfV0qxzg = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]; mJuOHWKg_IwdZ5E2S.append(tuple(ZXYTWoiz_HfV0qxzg))
            elif pWgXSsyT_WRJSQVNK == 'MfXjPSth_22wjGESz':
                VRavKEKG_kiTHMadu = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz * 2)][::-1]
                mJuOHWKg_IwdZ5E2S.append({VRavKEKG_kiTHMadu[i]: VRavKEKG_kiTHMadu[i + 1] for i in range(0, len(VRavKEKG_kiTHMadu), 2)})
            elif pWgXSsyT_WRJSQVNK == 'xJZKAHIE_R27S5qNi':
                ZXYTWoiz_HfV0qxzg = [mJuOHWKg_IwdZ5E2S.pop() for _ in range(lnKVeEau_etROKJGz)][::-1]; mJuOHWKg_IwdZ5E2S.append(set(ZXYTWoiz_HfV0qxzg))
            elif pWgXSsyT_WRJSQVNK == 'EvLncUym_Zwn2yqMn':
                dlcfOrvu_Em9kSaNK = mJuOHWKg_IwdZ5E2S.pop(); xjutmXis_evXq5lgG = mJuOHWKg_IwdZ5E2S.pop(); mJuOHWKg_IwdZ5E2S.append(xjutmXis_evXq5lgG[dlcfOrvu_Em9kSaNK])
            elif pWgXSsyT_WRJSQVNK == 'yOsljWPI_NgYQjsFJ':
                dlcfOrvu_Em9kSaNK = mJuOHWKg_IwdZ5E2S.pop(); xjutmXis_evXq5lgG = mJuOHWKg_IwdZ5E2S.pop(); JFHzgXhm_pm9KHmOR = mJuOHWKg_IwdZ5E2S.pop()
                xjutmXis_evXq5lgG[dlcfOrvu_Em9kSaNK] = JFHzgXhm_pm9KHmOR
            elif pWgXSsyT_WRJSQVNK == 'vTvgjYLh_owkKhWhp':
                mJuOHWKg_IwdZ5E2S.append(iter(mJuOHWKg_IwdZ5E2S.pop()))
            elif pWgXSsyT_WRJSQVNK == 'ssqZYVgx_hSp5mjlk':
                ysNYSQyz_smxFaypt = mJuOHWKg_IwdZ5E2S[-1]
                try:
                    mJuOHWKg_IwdZ5E2S.append(next(ysNYSQyz_smxFaypt))
                except StopIteration:
                    mJuOHWKg_IwdZ5E2S.pop(); IvVsUskN_s9j6zABf = lnKVeEau_etROKJGz * 3
            elif pWgXSsyT_WRJSQVNK == 'FeVfyCRr_YptXQRHP':
                import importlib as jOzpmDJx_1O7rncgT
                JkEsPwlx_e3f2EyS5 = kigYCPCf_PeV2W8IO[lnKVeEau_etROKJGz]
                SHxCOEtH_9VGSyRou = jOzpmDJx_1O7rncgT.import_module(JkEsPwlx_e3f2EyS5)
                mJuOHWKg_IwdZ5E2S.append(SHxCOEtH_9VGSyRou)
            elif pWgXSsyT_WRJSQVNK == 'kvuFAdgL_xPDPGRNS':
                import importlib as jOzpmDJx_1O7rncgT
                mod = mJuOHWKg_IwdZ5E2S[-1]
                UmtkoisP_F7NjGZA1 = kigYCPCf_PeV2W8IO[lnKVeEau_etROKJGz]
                try:
                    EPMHEaRE_xXeaOQrx = jOzpmDJx_1O7rncgT.import_module(mod.__name__ + '.' + UmtkoisP_F7NjGZA1)
                    mJuOHWKg_IwdZ5E2S.append(EPMHEaRE_xXeaOQrx)
                except (ImportError, AttributeError):
                    mJuOHWKg_IwdZ5E2S.append(getattr(mod, UmtkoisP_F7NjGZA1))
            elif pWgXSsyT_WRJSQVNK == 'KFMjeiqh_stMtSuG5':
                rqdmMWpj_LTJCJU7N = list(mJuOHWKg_IwdZ5E2S.pop())
                for bHOHEbPb_zyJ2BJTF in reversed(rqdmMWpj_LTJCJU7N[:lnKVeEau_etROKJGz]): mJuOHWKg_IwdZ5E2S.append(bHOHEbPb_zyJ2BJTF)
            elif pWgXSsyT_WRJSQVNK == 'QKlynrwp_FdP6dxUT':
                hyrKZZUB_SpnzqsB9 = mJuOHWKg_IwdZ5E2S.pop()
                if hyrKZZUB_SpnzqsB9 is not None: raise hyrKZZUB_SpnzqsB9
            elif pWgXSsyT_WRJSQVNK == 'wqjAYIYl_ZuTtuTeD':
                pass
        return None
    return McmThMzu_LkFbNWnr
def LjTidrNk_cvHQ1kTy(v):
 acc=0x5A5A5A5A
 def f(bc):
  nonlocal acc
  for i,b in enumerate(bc):acc^=(b<<(i%27));acc=(acc*0x01000193)&0xFFFFFFFF
 def w(v):
  f(bytes(v['fAxUWyHU_wKC48vPq']))
  for c in v['usuVcGPn_vmhGYqeN']:
   if isinstance(c,dict) and c.get('ejTyCCvJ_2CFM7otn'):w(c)
 w(v);return acc&0xFFFFFFFF
wVPqkhET_rrthHqHJ=570314893
XBfReHbt_vwZ6dZOd={83:'wqjAYIYl_ZuTtuTeD',213:'AAKsljkd_fzOsy0VW',41:'moXstZjn_FVZkmENF',206:'FjJyvYkT_yQQTjEP1',12:'zimpNWtV_XLUxxyqI',3:'IFWJIqFR_qWRgquVg',219:'WigMcUzd_EJgO3WpP',56:'sMjkdIFH_lDgdWZnG',150:'LXmDlQyH_j6aSa5aC',172:'WKfhBCGa_KL5MzrSL',205:'PdEucSKe_E0idIGLN',227:'SInKDbAH_fP6AQxiW',49:'LhdBczOm_oC4aeUKD',141:'mzbOVQcr_0n0FLCEy',188:'MlfLyWja_3xDwQKqp',191:'AaNJachr_fexr760m',224:'SOacuOxA_bPhjDRuf',133:'WaBNXrRw_AmabHYBR',201:'wfDdbjwU_4ymTudIB',112:'JrQXehZq_GCGHj7EQ',80:'JanKFXXq_DrG7ivJv',124:'LXIAsDiP_UzdlxwfK',30:'Vpslzyod_5fJbwdJT',180:'tVUAOosJ_5OjtOsKv',186:'lJuejHOB_EqYdYUIV',176:'ihGmGHjE_wEvoIijW',23:'ZTJRJHeG_XY8r805o',146:'LBtGJuGv_TPxW113W',179:'PnaKASmj_Hw18hj0o',239:'VConQkoo_ev4Xnrf7',43:'wBpuyyCR_MI7mecSc',77:'kUCUFPVE_0tVAyKN7',104:'cTWSvIzw_dsoZutvq',226:'GkTOQWdk_3FNG5iRt',142:'zKuRKDpr_lEyWhZLt',40:'FIFTPWDF_EIyf1jkl',156:'zsNbWNOD_RgRzw78x',248:'kHofKTdA_PxM5EEbE',117:'CbKzRGeU_WaqVKImI',44:'EwPggtvL_5oAr0VcC',92:'EoGgjNoa_jhsie37S',91:'zRSEXQPK_i9Ed686J',190:'mXoGJJgl_WdyGxpqT',155:'rlyPuPYa_WlwSpE2y',125:'zsYyDSbP_lgpDZoOQ',130:'TlPYqTie_8lGMkD9V',222:'TbUTIXfK_YXRBmM3S',105:'IUDRgTXS_ngbTFTe8',217:'rabLItcD_hEXDo3LS',93:'SBHHOxXi_V5KYJArp',69:'lpzxcJLQ_b882WR9M',97:'MfXjPSth_22wjGESz',67:'xJZKAHIE_R27S5qNi',198:'EvLncUym_Zwn2yqMn',119:'yOsljWPI_NgYQjsFJ',152:'SXKhAnJu_LRsuWFuX',151:'nxSKIJBb_x4rG34gV',54:'vTvgjYLh_owkKhWhp',34:'ssqZYVgx_hSp5mjlk',15:'FeVfyCRr_YptXQRHP',87:'kvuFAdgL_xPDPGRNS',24:'nVOxNoLn_me8BS1hV',218:'AMLdCnpZ_VRt9zar0',140:'KFMjeiqh_stMtSuG5',65:'QKlynrwp_FdP6dxUT'}
PAhTtWPP_2dG4RjTh={'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[89,86,86,70,136,136,147,187,186,197,238,236,99,31,30,198,80,80,171,129,130,157,176,180,51,231,230,0,24,24,55,74,74,1,125,124,54,172,174,53,227,224,133,19,18,57,69,68,224,118,118,129,168,168,66,222,218,155,12,12,168,62,62,89,115,112,139,166,162,1,209,212,30,6,6,69,56,56,23,107,106,4,158,156,27,205,206,151,1,0,79,51,50,242,100,100,191,147,150,19,206,200,52,252,250,5,42,44,5,47,94,185,150,144,25,197,194,58,243,244,15,37,38,113,92,88,95,130,138,164,188,188,147,238,238,93,33,32,202,80,82,81,135,132,33,183,182,193,239,232,193,19,26,151,70,76,3,124,126,38,176,176,203,225,226,61,16,20,147,77,70,96,120,120,215,170,170,161,221,220,150,12,14,149,67,64,229,115,114,141,163,164,13,223,214,211,4,8,71,56,58,250,108,108,183,157,158,249,212,208,215,15,2,44,52,52,27,102,102,229,153,152,82,200,202,41,255,252,185,47,46,73,102,96,73,156,146,185,198,196,96,246,246,1,43,40,115,94,90,89,131,140,166,190,190,141,240,240,95,35,34,204,86,84,83,133,134,47,185,184,195,237,234,199,12,28,51,76,78,22,128,128,155,177,178,205,224,228,195,7,22,80,72,72,7,122,122,209,173,172,70,220,222,197,19,16,213,67,66,161,102,116,115,181,166,136,216,216,135,10,10,65,61,60,248,110,110,137,166,160,9,198,210,202,2,4,26,21,54,182,104,104],'usuVcGPn_vmhGYqeN':['traceback',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,203,31,30,0,80,80,255,131,130,130,180,180,196,100,230,214,26,24,99,74,74,228,126,124,123,173,174,53,228,224,199,23,18,145,66,68,163,113,118,125,160,168,15,211,218,217,6,12,235,53,62,165,124,112,119,175,162,1,218,212,211,9,6,237,40,56,191,123,106,73,142,156,27,221,206,213,20,0,231,39,50,177,114,100,67,129,150,29,208,200,47,227,250,249,60,44,139,68,94,69,139,144,23,222,194,33,233,244,123,58,38,141,70,88,95,149,138,236,188,188,59,206,238,245,41,32,135,115,82,81,166,132,99,149,182,61,204,232,207,63,26,153,106,76,171,89,126,101,152,176,55,203,226,193,62,20,147,109,70,173,84,120,127,135,170,9,242,220,219,33,14,149,112,64,167,67,114,113,150,164,3,229,214,221,60,8,103,44,58,69,110,108,88,158,158,51,208,208,196,2,2,225,1,52,179,80,102,200,152,152,154,202,202,41,203,252,251,12,46,181,88,96,71,171,146,17,239,196,35,204,246,253,57,40,143,109,90,89,183,140,107,130,190,37,205,240,247,28,34,129,78,84,83,170,134,109,135,184,63,170,234,201,93,28,155,12,78,85,195,128,103,242,178,49,160,228,195,83,22,21,94,72,83,120,122,106,172,172,142,222,222,197,86,16,151,68,66,161,51,116,115,238,166,13,145,216,223,26,10,233,43,60,187,45,110,117,182,160,7,152,210,209,79,4,227,48,54,189,36,104,79,215,154,25,130,204,43,177,254,229,96,48,183,95,98,65,151,148,19,241,198,45,169,248,255,120,42,1,74,92,167,140,142,6,192,192,162,242,242,179,37,36,192,86,86,164,128,136,147,186,186,110,236,236],'usuVcGPn_vmhGYqeN':[6506707,6506693,'append',251,157,237,181,83,41,9,118,244,48,90,104,44,149,158,28,190,223,243,62,65,113,26,34,128,236,114,10808237,10808233,8,12,16,1,21,10,18,0,2,5,17,4,11,3,19,20,13,14,7,15,6,9760400,9760413,126,182,167,77,64,209,226,136,165,38,234,123,37,106,139,98,56,203,102,129,141,152,95,156,255,134,100,225],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},'decode','utf-8','print_exc',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,203,31,30,0,80,80,255,131,130,130,180,180,196,130,230,214,26,24,99,74,74,228,126,124,123,173,174,53,228,224,199,23,18,145,66,68,163,113,118,125,160,168,15,211,218,217,6,12,235,53,62,165,124,112,119,175,162,1,218,212,211,10,6,237,55,56,191,122,106,73,141,156,27,220,206,213,19,0,231,38,50,177,113,100,67,128,150,149,221,200,47,237,250,249,52,44,139,71,94,69,138,144,23,217,194,33,232,244,243,59,38,141,70,88,95,157,138,105,174,188,59,241,238,245,0,32,135,115,82,81,166,132,99,149,182,61,204,232,71,21,26,101,78,76,184,126,126,83,176,176,36,226,226,193,49,20,147,96,70,40,120,120,250,170,170,9,208,220,219,41,14,149,104,64,167,91,114,113,142,164,3,253,214,221,36,8,239,23,58,185,66,108,75,136,158,5,255,208,215,50,2,225,5,52,179,84,102,77,171,152,151,197,202,213,254,252,232,46,46,48,96,96,71,166,146,17,241,196,35,192,246,253,31,40,143,119,90,89,180,140,107,135,190,37,193,240,247,24,34,129,111,84,83,186,134,109,133,184,63,212,234,201,35,28,155,85,78,221,143,128,155,176,178,34,228,228,70,22,22,223,73,72,236,122,122,128,164,172,247,222,222,146,16,16],'usuVcGPn_vmhGYqeN':[11808219,11808212,'append',34,56,160,135,153,50,85,35,154,193,36,55,148,185,248,14,32,155,180,20,3,8,13,4,9,1,7,12,11,5,6,2,10,0,15358752,15358765,104,166,174,127,90,115,203,195,117,176,208,146,190,241,86,181,95,63,201,175,236,177,92,210,54],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},'__traceback__','tb_frame',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,203,31,30,0,80,80,255,131,130,130,180,180,196,219,230,214,26,24,99,74,74,228,126,124,123,173,174,53,228,224,199,23,18,145,66,68,163,113,118,125,160,168,15,211,218,217,6,12,235,53,62,165,124,112,119,175,162,1,218,212,91,10,6,237,55,56,191,122,106,73,141,156,27,220,206,213,15,0,231,33,50,57,97,100,191,148,150,14,200,200,25,250,250,234,44,44,139,74,94,69,133,144,146,194,194,164,244,244,243,48,38,141,85,88,95,157,138,105,164,188,59,247,238,125,37,32,123,80,82,66,132,132,230,182,182,61,242,232,207,1,26,153,80,76,171,99,126,101,174,176,191,231,226,61,22,20,128,70,70,40,120,120,61,171,170,74,220,220,34,6,14,105,64,64,240,114,114],'usuVcGPn_vmhGYqeN':[4911327,4911322,'append',60,139,84,123,81,40,66,151,167,248,77,97,3,2,1,4,0,9769597,9769702,219,33,229,101,46,238,65,89,191],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},'f_code','co_filename',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,203,31,30,0,80,80,255,131,130,130,180,180,196,172,230,214,26,24,99,74,74,228,126,124,123,173,174,53,228,224,199,23,18,145,66,68,163,113,118,125,160,168,15,211,218,217,6,12,235,53,62,165,124,112,119,175,162,1,218,212,211,9,6,101,53,56,191,122,106,73,141,156,27,205,206,213,18,0,231,33,50,177,116,100,67,130,150,29,221,200,47,236,250,249,59,44,3,87,94,185,146,144,4,194,194,23,244,244,224,38,38,141,64,88,95,147,138,236,188,188,190,238,238,245,50,32,135,72,82,81,159,132,99,170,182,61,245,232,207,4,26,153,83,76,171,94,126,101,187,176,191,235,226,61,22,20,128,70,70,40,120,120,127,139,170,9,254,220,219,45,14,149,100,64,167,87,114,113,130,164,3,241,214,221,28,8,239,18,58,49,101,108,183,156,158,22,208,208,82,2,2,163,53,52,240,102,102,180,144,152,227,202,202,126,252,252],'usuVcGPn_vmhGYqeN':[5484719,5484710,'append',4,76,185,240,69,197,54,9,148,41,178,219,248,2,0,1,5,6,3,8,7,10314127,10314025,203,44,241,183,230,86,124,88,46,20,61,32,189,90,33],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},'co_name',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,203,31,30,0,80,80,255,131,130,130,180,180,196,221,230,214,26,24,99,74,74,228,126,124,123,173,174,53,228,224,199,23,18,145,66,68,163,113,118,125,160,168,15,211,218,217,6,12,235,53,62,165,124,112,255,168,162,1,217,212,211,8,6,237,55,56,191,122,106,73,141,156,27,195,206,93,5,0,27,48,50,162,100,100,117,150,150,14,200,200,47,232,250,249,63,44,14,94,94,192,144,144,23,214,194,33,225,244,243,48,38,141,79,88,95,146,138,225,185,188,199,236,238,230,32,32,2,82,82,81,157,132,99,172,182,61,243,232,207,6,26,153,81,76,35,123,126,153,178,176,36,226,226,68,20,20,209,71,70,238,120,120,134,162,170,245,220,220,140,14,14],'usuVcGPn_vmhGYqeN':[11504274,11504279,'append',133,251,53,211,127,200,96,113,142,100,2,3,0,1,4,13176634,13176647,139,194,80,236,223,114,227,144,148,231],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},'tb_lineno',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,203,31,30,0,80,80,255,131,130,130,180,180,196,164,230,214,26,24,99,74,74,228,126,124,123,173,174,53,228,224,199,23,18,145,66,68,163,113,118,125,160,168,15,211,218,217,6,12,235,53,62,165,124,112,119,175,162,137,223,212,211,8,6,237,55,56,191,122,106,73,141,156,27,220,206,213,19,0,231,60,50,177,112,100,203,145,150,225,202,200,60,250,250,207,44,44,152,94,94,69,133,144,23,212,194,164,244,244,118,38,38,141,79,88,95,146,138,105,165,188,59,244,238,245,59,32,135,94,82,81,152,132,235,177,182,193,234,232,220,26,26,28,76,76,171,99,126,101,184,176,55,254,226,193,10,20,147,89,70,173,88,120,127,165,170,129,219,220,39,12,14,134,64,64,34,114,114,51,165,164,64,214,214,36,0,8,19,58,58,238,108,108],'usuVcGPn_vmhGYqeN':[7960028,7960027,'append',192,234,92,32,174,67,74,112,35,191,147,1,6,4,3,2,0,5,7272580,7272475,29,240,187,255,203,233,190,33,210,15],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},'f_locals',{'ejTyCCvJ_2CFM7otn':1,'fAxUWyHU_wKC48vPq':[11,86,86,70,136,136,147,187,186,57,236,236,99,31,30,102,80,80,160,170,130,122,182,180,207,230,230,128,25,24,159,72,74,169,127,124,123,170,174,53,229,224,199,20,18,25,65,68,163,113,118,125,160,168,135,219,218,37,14,12,248,62,62,147,112,112,100,162,162,1,221,212,211,12,6,104,56,56,58,106,106,73,151,156,147,207,206,41,2,0,244,50,50,52,100,100,67,154,150,149,201,200,211,248,250,234,44,44,14,94,94,7,145,144,84,194,194,216,242,244,15,38,38,218,88,88],'usuVcGPn_vmhGYqeN':[1,'append',44,74,31,23,36,3,0,10812712,10812696,70,76],'lSINguoA_7ffl9uTB':['__cr','range','_i'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]},6342706,6342682,'tb_next'],'lSINguoA_7ffl9uTB':['traceback','exec','code','print','bytes','e','gMzAqBvW_yEipeHBt','VkaTsYnZ_re6pgA2k'],'yCpQNlVC_ISyPZY2t':[],'dBTPvLMA_QUyXrcUS':[]}
if LjTidrNk_cvHQ1kTy(PAhTtWPP_2dG4RjTh)!=wVPqkhET_rrthHqHJ:__import__("sys").exit()
PjVBBRRu_IIdSccGK=nTMHnpYh_l72e4lFm(XBfReHbt_vwZ6dZOd,LKHYIEtY_K5fyNlmf=50,fcnMVBoo_HbNnGy0J=86)
PjVBBRRu_IIdSccGK(PAhTtWPP_2dG4RjTh,{'__name__':'__main__','Obfuscator NTT - https://discord.gg/YAdrT39SWq':SvuUUhBB_30lrFcP6})
